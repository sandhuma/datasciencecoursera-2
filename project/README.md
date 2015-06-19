# Getting and Cleaning Data Course Project
Radoslav Fasanek
June, 2015
  
####About
This is a course project for **Getting and Cleaning Data** course. The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The data used in this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 


##R Libraries


```r
library(dplyr) ##required for summarise_each() function
```


##Download Data

Data for this project could be downloaded from the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After downloading the archive, unzip the archive into working directory.


##Construct Tidy Data Set 

This project required us to create R script called run_analysis.R. The script performs the following steps:
* reads test and train data and then merge them using rbind() function
* keeps only measurments for mean and standard deviation by selecting appropriate columns by grep() function
* replaces activity IDs with activity labels, which was ensured by merge() function and removing the original activity ID column 
* clean column names by removing hyphens and brackets and duplicate strings by gsub() function
* calculates average of each measurment for each activity and each subject by firstly grouping data and then by using summarise_each() function from dplyr package .
* exports tidy data set to TidyDataSet.txt file 

In order to create the tidy data set, just run the `run_analysis.R` script. Please, make sure that the dataset archive is unzipped into your working directory.