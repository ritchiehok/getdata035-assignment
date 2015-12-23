---
title: "Codebook for Data Analysis Work on Human Activity Recognition using Smartphones"
author: "Ritchie Hok"
date: "December 19, 2015"
---

## Project Description
The 'run_analysis.R' script calculates the average of the mean and standard deviation measures by participant and activity.

##Study design and data processing
The 'Human Activity Recognition Using Smartphones' data set is built from the recordings of 30 subjects performing six activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

###Collection of the raw data
######Human Activity Recognition Using Smartphones data set
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###Notes on the original (raw) data 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##Creating the output file
The output file conforms to tidy data principles:
- Each variable forms a column
- Each observation forms a row
- Each type of observational unit forms a table

###Cleaning of the data
The run_analysis.R script accomplishes the following steps:

(1) Merges the training and the test sets to create one data set

(2) Extracts only the measurements on the mean and standard deviation for each measurement 

(3) Uses descriptive activity names to name the activities in the data set

(4) Appropriately labels the data set with descriptive variable names 

(5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

See ReadMe file for additional details:
https://github.com/ritchiehok/getdata035-assignment/blob/master/README.md

##Description of the variables in the output data set
The output data set contains the average of the mean and standard deviation measures by subject and activity.

There are 30 participants in total, each with measurements for six activities of daily living (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) for a total of 180 rows.  Mean measurements are recorded for 66 mean and standard deviation variables which are described below (68 columns in total when subject and activity are included).

Variable # | Variable Name | Variable Definition
--- | --- | ---
1 | subject | participant number
2 | activities | one of six activities of daily living: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3 | t-body-accelerometer-mean-x | mean time from the body accelerometer along the x-axis
4 | t-body-accelerometer-mean-y | mean time from the body accelerometer along the y-axis
5 | t-body-accelerometer-mean-z | mean time from the body accelerometer along the z-axis
6 | t-body-accelerometer-stdev-x | standard deviation of the time from the body accelerometer along the x-axis           
7 | t-body-accelerometer-stdev-y | standard deviation of the time from the body accelerometer along the y-axis    
8 | t-body-accelerometer-stdev-z | standard deviation of the time from the body accelerometer along the z-axis                
9 | t-gravity-accelerometer-mean-x | mean time from the gravity accelerometer along the x-axis
10 | t-gravity-accelerometer-mean-y | mean time from the gravity accelerometer along the y-axis           
11 | t-gravity-accelerometer-mean-z | mean time from the gravity accelerometer along the z-axis
12 | t-gravity-accelerometer-stdev-x | standard deviation of the time from the gravity accelerometer along the x-axis          
13 | t-gravity-accelerometer-stdev-y | standard deviation of the time from the gravity accelerometer along the y-axis
14 | t-gravity-accelerometer-stdev-z | standard deviation of the time from the gravity accelerometer along the z-axis          
15 | t-body-accelerometer-jerk-mean-x | mean time from the body accelerometer measuring jerk along the x-axis
16 | t-body-accelerometer-jerk-mean-y | mean time from the body accelerometer measuring jerk along the y-axis        
17 | t-body-accelerometer-jerk-mean-z | mean time from the body accelerometer measuring jerk along the z-axis
18 | t-body-accelerometer-jerk-stdev-x | standard deviation of the time from the body accelerometer measuring jerk along the x-axis   
19 | t-body-accelerometer-jerk-stdev-y | standard deviation of the time from the body accelerometer measuring jerk along the y-axis
20 | t-body-accelerometer-jerk-stdev-z | standard deviation of the time from the body accelerometer measuring jerk along the z-axis   
21 | t-body-gyroscope-mean-x | mean time from the body gyroscope along the x-axis
22 | t-body-gyroscope-mean-y | mean time from the body gyroscope along the y-axis                 
23 | t-body-gyroscope-mean-z | mean time from the body gyroscope along the z-axis
24 | t-body-gyroscope-stdev-x | standard deviation of the time from the body gyroscope along the x-axis                 
25 | t-body-gyroscope-stdev-y | standard deviation of the time from the body gyroscope along the y-axis
26 | t-body-gyroscope-stdev-z | standard deviation of the time from the body gyroscope along the z-axis                 
27 | t-body-gyroscope-jerk-mean-x | mean time from the body gyroscope measuring jerk along the x-axis
28 | t-body-gyroscope-jerk-mean-y | mean time from the body gyroscope measuring jerk along the y-axis            
29 | t-body-gyroscope-jerk-mean-z | mean time from the body gyroscope measuring jerk along the z-axis
30 | t-body-gyroscope-jerk-stdev-x | standard deviation of the time from the body gyroscope measuring jerk along the x-axis          
31 | t-body-gyroscope-jerk-stdev-y | standard deviation of the time from the body gyroscope measuring jerk along the y-axis
32 | t-body-gyroscope-jerk-stdev-z | standard deviation of the time from the body gyroscope measuring jerk along the z-axis
33 | t-body-accelerometer-magnitude-mean | mean time from the body accelerometer measuring magnitude
34 | t-body-accelerometer-magnitude-stdev | standard deviation of the time from the body accelerometer measuring magnitude    
35 | t-gravity-accelerometer-magnitude-mean | mean time from the gravity accelerometer measuring magnitude
36 | t-gravity-accelerometer-magnitude-stdev | standard deviation of the  time from the gravity accelerometer measuring magnitude
37 | t-body-accelerometer-jerk-magnitude-mean | mean time from the body accelerometer measuring jerk and magnitude
38 | t-body-accelerometer-jerk-magnitude-stdev | standard deviation of the time from the body accelerometer measuring jerk and magnitude
39 | t-body-gyroscope-magnitude-mean | mean time from the body gyroscope measuring magnitude
40 | t-body-gyroscope-magnitude-stdev | standard deviation of the time from the body gyroscope measuring magnitude        
41 | t-body-gyroscope-jerk-magnitude-mean | mean time from the body gyroscope measuring jerk
42 | t-body-gyroscope-jerk-magnitude-stdev | standard deviation of the time from the body gyroscope measuring jerk
43 | f-body-accelerometer-mean-x | mean frequency domain signal from the body accelerometer along the x-axis        
44 | f-body-accelerometer-mean-y | mean frequency domain signal from the body accelerometer along the y-axis
45 | f-body-accelerometer-mean-z | mean frequency domain signal from the body accelerometer along the z-axis
46 | f-body-accelerometer-stdev-x | standard deviation of the frequency domain signal from the body accelerometer along the x-axis
47 | f-body-accelerometer-stdev-y | standard deviation of the frequency domain signal from the body accelerometer along the y-axis
48 | f-body-accelerometer-stdev-z | standard deviation of the frequency domain signal from the body accelerometer along the z-axis
49 | f-body-accelerometer-jerk-mean-x | mean frequency domain signal from the body accelerometer measuring jerk along the x-axis
50 | f-body-accelerometer-jerk-mean-y | mean frequency domain signal from the body accelerometer measuring jerk along the y-axis
51 | f-body-accelerometer-jerk-mean-z | mean frequency domain signal from the body accelerometer measuring jerk along the z-axis
52 | f-body-accelerometer-jerk-stdev-x | standard deviation of the frequency domain signal from the body accelerometer measuring jerk along the x-axis        
53 | f-body-accelerometer-jerk-stdev-y | standard deviation of the frequency domain signal from the body accelerometer measuring jerk along the y-axis 
54 | f-body-accelerometer-jerk-stdev-z | standard deviation of the frequency domain signal from the body accelerometer measuring jerk along the z-axis         
55 | f-body-gyroscope-mean-x | mean frequency domain signal from the body gyroscope along the x-axis
56 | f-body-gyroscope-mean-y | mean frequency domain signal from the body gyroscope along the y-axis
57 | f-body-gyroscope-mean-z | mean frequency domain signal from the body gyroscope along the z-axis
58 | f-body-gyroscope-stdev-x | standard deviation of the frequency domain signal from the body gyroscope along the x-axis
59 | f-body-gyroscope-stdev-y | standard deviation of the frequency domain signal from the body gyroscope along the x-axis
60 | f-body-gyroscope-stdev-z | standard deviation of the frequency domain signal from the body gyroscope along the x-axis
61 | f-body-accelerometer-magnitude-mean | mean frequency domain signal from the body accelerometer measuring magnitude
62 | f-body-accelerometer-magnitude-stdev | standard deviation of the frequency domain signal from the body accelerometer measuring magnitude
63 | f-body-accelerometer-jerk-magnitude-mean | mean frequency domain signal from the body accelerometer measuring jerk and magnitude
64 | f-body-accelerometer-jerk-magnitude-stdev | standard deviation of the frequency domain signal from the body accelerometer measuring jerk and magnitude
65 | f-body-gyroscope-magnitude-mean | mean frequency domain signal from the body gyroscope
66 | f-body-gyroscope-magnitude-stdev | standard deviation of the frequency domain signal from the body gyroscope         
67 | f-body-gyroscope-jerk-magnitude-mean | mean frequency domain signal from the body gyroscope measuring jerk and magnitude
68 | f-body-gyroscope-jerk-magnitude-stdev | standard deviation of the frequency domain signal from the body gyroscope measuring jerk and magnitude
