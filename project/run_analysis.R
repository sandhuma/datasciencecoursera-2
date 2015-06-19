# Load  the training and the test sets into R.  -------
 

trainX <- read.table("UCI HAR Dataset/train/X_train.txt", header=F, sep="")
trainSubject <-read.table("UCI HAR Dataset/train/subject_train.txt", header=F, sep="")
trainY <- read.table("UCI HAR Dataset/train/y_train.txt", header=F, sep="")
train <- cbind(trainSubject, trainY, trainX)
rm(list=c("trainX", "trainSubject", "trainY")) # remove unnecessary variables

testX<- read.table("UCI HAR Dataset/test/X_test.txt", header=F, sep="")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", header=F, sep="")
testY <- read.table("UCI HAR Dataset/test/y_test.txt", header=F, sep="")
test <- cbind(testSubject, testY, testX)
rm(list=c("testX", "testSubject", "testY")) # remove unnecessary variables


# Merges the training and the test sets to create one data set. -----------


data <- rbind(train, test)
rm(list=c("train", "test")) # remove unnecessary variables

columnNames <- read.table("UCI HAR Dataset/features.txt", header=F, stringsAsFactors=F, sep="")
columnNames[,1] <- NULL
columnNames <- t(columnNames) 
columnNames <- as.list(columnNames)
columnNames <- c("Subject", "Activity", columnNames)
names(data) <- columnNames
rm(list=c("columnNames")) # remove unnecessary variables


# Extracts only the measurements on the mean and standard deviation for each measurement. ----


data <- data[,c(1:2, grep(pattern = "mean\\(\\)", x = names(data), ignore.case = T, perl = T),
                     grep(pattern = "std\\(\\)", x = names(data), ignore.case = T, perl = T))]
#c(1:2) keeps subject and activity IDs in the data frame


# Uses descriptive activity names to name the activities in the data frame --------


activities <- read.table("UCI HAR Dataset/activity_labels.txt", header=F, stringsAsFactors=F, sep="")

data <- merge(x= data,y=activities, by.x = "Activity", by.y= "V1",all.x = T) # this merges activity labels with data
data$Activity<-NULL
names(data)[names(data)=="V2"] <- "Activity" # rename V2 column to Activity

rm(list=c("activities")) # remove unnecessary variables


# Appropriately labels the data set with descriptive variable name --------

names(data) <- sapply(names(data), function(x){
                  x <- gsub(pattern = "-",  replacement = " ", x = x) # removes -
                  x <- gsub(pattern = "\\(\\)", replacement = "", x = x) # removes ()
                  x <- gsub(pattern = "BodyBody", replacement = "Body", x = x) # replaces BodyBody with Body string
                  return(x)
                  })

names(data)

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. ----

#install.packages("dplyr")
library(dplyr)

data <- data %>% group_by(Subject,Activity)
tidyData<-data %>% summarise_each(funs(mean))


# Save tidyData into txt file ---------------------------------------------

write.table(x = tidyData, file = "TidyDataSet.txt", row.names= F, sep = ",")
