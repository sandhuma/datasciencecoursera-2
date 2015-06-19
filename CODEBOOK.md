# Codebook for Getting and Cleaning Data project

## Dataset information

* The dataset has 180 records (30 participants and 6 activities) and 68 columns (Subject, Activity and 66 movements measurements) 
* Every record consist of information about one participant and one activity with mean and standard deviations from 66 movement measuremenets.

## Variable Units

* **Subject** (column 1) has values from 1 to 30 and it represents ID of a participant
* **Activity** (column 2) has 1 of the following 6 string values:
	* LAYING
	* SITTING
	* STANDING
	* WALKING
	* WALKING DOWNSTAIRS
	* WALKING UPSTAIRS
* **Movements measurements** (columns 3-68) are normalized to a number in the range [0-1]

## Variables

Column | Variable Name | Variable description
------ | ------------- | --------------------
1|Subject|Identifies the subject who performed the activity
2|Activity|One of the performed activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3|tBodyAcc mean X|Mean value of Body Acceleration time domain signal in X direction
4|tBodyAcc mean Y|Mean value of Body Acceleration time domain signal in Y direction
5|tBodyAcc mean Z|Mean value of Body Acceleration time domain signal in Z direction
6|tGravityAcc mean X|Mean value of Gravity Acceleration time domain signal in X direction
7|tGravityAcc mean Y|Mean value of Gravity Acceleration time domain signal in Y direction
8|tGravityAcc mean Z|Mean value of Gravity Acceleration time domain signal in Z direction
9|tBodyAccJerk mean X|Mean value of Body Acceleration Jerk time domain signal in X direction
10|tBodyAccJerk mean Y|Mean value of Body Acceleration Jerk time domain signal in Y direction
11|tBodyAccJerk mean Z|Mean value of Body Acceleration Jerk time domain signal in Z direction
12|tBodyGyro mean X|Mean value of Body Gyroscope time domain signal in X direction
13|tBodyGyro mean Y|Mean value of Body Gyroscope time domain signal in Y direction
14|tBodyGyro mean Z|Mean value of Body Gyroscope time domain signal in Z direction
15|tBodyGyroJerk mean X|Mean value of Body Gyroscope Jerk time domain signal in X direction
16|tBodyGyroJerk mean Y|Mean value of Body Gyroscope Jerk time domain signal in Y direction
17|tBodyGyroJerk mean Z|Mean value of Body Gyroscope Jerk time domain signal in Z direction
18|tBodyAccMag mean|Mean value of Body Acceleration Magnitude time domain signal 
19|tGravityAccMag mean|Mean value of Gravity Accelereation Magnitude time domain signal 
20|tBodyAccJerkMag mean|Mean value of Body Acceleration Jerk Magnitude time domain signal 
21|tBodyGyroMag mean|Mean value of Body Gyroscope Magnitude time domain signal 
22|tBodyGyroJerkMag mean|Mean value of Body Gyroscope Jerk Magnitude time domain signal 
23|fBodyAcc mean X|Mean value of Body Acceleration frequency domain signal in X direction
24|fBodyAcc mean Y|Mean value of Body Acceleration frequency domain signal in Y direction
25|fBodyAcc mean Z|Mean value of Body Acceleration frequency domain signal in Z direction
26|fBodyAccJerk mean X|Mean value of Body Acceleration Jerk frequency domain signal in X direction
27|fBodyAccJerk mean Y|Mean value of Body Acceleration Jerk frequency domain signal in Y direction
28|fBodyAccJerk mean Z|Mean value of Body Acceleration Jerk frequency domain signal in Z direction
29|fBodyGyro mean X|Mean value of Body Gyroscope frequency domain signal in X direction
30|fBodyGyro mean Y|Mean value of Body Gyroscope frequency domain signal in Y direction
31|fBodyGyro mean Z|Mean value of Body Gyroscope frequency domain signal in Z direction
32|fBodyAccMag mean|Mean value of Body Acceleration Magnitude frequency domain signal 
33|fBodyAccJerkMag mean|Mean value of Body Acceleration Jerk Magnitude frequency domain signal 
34|fBodyGyroMag mean|Mean value of Body Gyroscope Magnitude frequency domain signal 
35|fBodyGyroJerkMag mean|Mean value of Body Gyroscope Jerk Magnitude frequency domain signal 
36|tBodyAcc std X|Standard deviation of Body Acceleration frequency domain signal in X direction
37|tBodyAcc std Y|Standard deviation of Body Acceleration frequency domain signal in Y direction
38|tBodyAcc std Z|Standard deviation of Body Acceleration frequency domain signal in Z direction
39|tGravityAcc std X|Standard deviation of Gravity Acceleration frequency domain signal in X direction
40|tGravityAcc std Y|Standard deviation of Gravity Acceleration frequency domain signal in Y direction
41|tGravityAcc std Z|Standard deviation of Gravity Acceleration frequency domain signal in Z direction
42|tBodyAccJerk std X|Standard deviation of Body Acceleration Jerk frequency domain signal in X direction
43|tBodyAccJerk std Y|Standard deviation of Body Acceleration Jerk frequency domain signal in Y direction
44|tBodyAccJerk std Z|Standard deviation of Body Acceleration Jerk frequency domain signal in Z direction
45|tBodyGyro std X|Standard deviation of Body Gyroscope frequency domain signal in X direction
46|tBodyGyro std Y|Standard deviation of Body Gyroscope frequency domain signal in Y direction
47|tBodyGyro std Z|Standard deviation of Body Gyroscope frequency domain signal in Z direction
48|tBodyGyroJerk std X|Standard deviation of Body Gyroscope Jerk frequency domain signal in X direction
49|tBodyGyroJerk std Y|Standard deviation of Body Gyroscope Jerk frequency domain signal in Y direction
50|tBodyGyroJerk std Z|Standard deviation of Body Gyroscope Jerk frequency domain signal in Z direction
51|tBodyAccMag std|Standard deviation of Body Acceleration Magnitude frequency domain signal 
52|tGravityAccMag std|Standard deviation of Gravity Accelereation Magnitude frequency domain signal 
53|tBodyAccJerkMag std|Standard deviation of Body Acceleration Jerk Magnitude frequency domain signal 
54|tBodyGyroMag std|Standard deviation of Body Gyroscope Magnitude frequency domain signal 
55|tBodyGyroJerkMag std|Standard deviation of Body Gyroscope Jerk Magnitude frequency domain signal 
56|fBodyAcc std X|Standard deviation of Body Acceleration frequency domain signal in X direction
57|fBodyAcc std Y|Standard deviation of Body Acceleration frequency domain signal in Y direction
58|fBodyAcc std Z|Standard deviation of Body Acceleration frequency domain signal in Z direction
59|fBodyAccJerk std X|Standard deviation of Body Acceleration Jerk frequency domain signal in X direction
60|fBodyAccJerk std Y|Standard deviation of Body Acceleration Jerk frequency domain signal in Y direction
61|fBodyAccJerk std Z|Standard deviation of Body Acceleration Jerk frequency domain signal in Z direction
62|fBodyGyro std X|Standard deviation of Body Gyroscope frequency domain signal in X direction
63|fBodyGyro std Y|Standard deviation of Body Gyroscope frequency domain signal in Y direction
64|fBodyGyro std Z|Standard deviation of Body Gyroscope frequency domain signal in Z direction
65|fBodyAccMag std|Standard deviation of Body Acceleration Magnitude frequency domain signal 
66|fBodyAccJerkMag std|Standard deviation of Body Acceleration Jerk Magnitude frequency domain signal 
67|fBodyGyroMag std|Standard deviation of Body Gyroscope Magnitude frequency domain signal 
68|fBodyGyroJerkMag std|Standard deviation of Body Gyroscope Jerk Magnitude frequency domain signal 
