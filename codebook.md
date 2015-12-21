---
title: "Codebook template"
author: "Ritchie Hok"
date: "December 19, 2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
run_analysis.R

##Study design and data processing
The *Human Activity Recognition Using Smartphones* data set is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

###Collection of the raw data
Human Activity Recognition Using Smartphones Data Set
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###Notes on the original (raw) data 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##Creating the tidy datafile

###Guide to create the tidy data file
Description on how to create the tidy data file (1. download the data, ...)/

###Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

Variable # | Variable Name | Variable Definition
--- | --- | ---
1|subject|participant number
2 | activity-name | one of six activities of daily living: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3 | t-body-accelerometer-mean-x | mean time from the body accelerometer along the x-axis
4 | t-body-accelerometer-mean-y | mean time from the body accelerometer along the y-axis
5 | t-body-accelerometer-mean-z | mean time from the body accelerometer along the z-axis
6 | t-body-accelerometer-stdev-x | standard deviation of the time from the body accelerometer along the x-axis           
7 | t-body-accelerometer-stdev-y | standard deviation of the time from the body accelerometer along the y-axis    
8 | t-body-accelerometer-stdev-z | standard deviation of the time from the body accelerometer along the z-axis                
9 | t-gravity-accelerometer-mean-x |
10 | t-gravity-accelerometer-mean-y |           
11 | t-gravity-accelerometer-mean-z |
12 | t-gravity-accelerometer-stdev-x |          
13 | t-gravity-accelerometer-stdev-y |
14 | t-gravity-accelerometer-stdev-z |          
15 | t-body-accelerometer-jerk-mean-x |
16 | t-body-accelerometer-jerk-mean-y |         
17 | t-body-accelerometer-jerk-mean-z |
18 | t-body-accelerometer-jerk-stdev-x |        
19 | t-body-accelerometer-jerk-stdev-y |
20 | t-body-accelerometer-jerk-stdev-z |       
21 | t-body-gyroscope-mean-x |
22 | t-body-gyroscope-mean-y |                  
23 | t-body-gyroscope-mean-z |
24 | t-body-gyroscope-stdev-x |                 
25 | t-body-gyroscope-stdev-y |
26 | t-body-gyroscope-stdev-z |                 
27 | t-body-gyroscope-jerk-mean-x |
28 | t-body-gyroscope-jerk-mean-y |             
29 | t-body-gyroscope-jerk-mean-z
30 | t-body-gyroscope-jerk-stdev-x |            
31 | t-body-gyroscope-jerk-stdev-y |
32 | t-body-gyroscope-jerk-stdev-z |
33 | t-body-accelerometer-magnitude-mean |
34 | t-body-accelerometer-magnitude-stdev |     
35 | t-gravity-accelerometer-magnitude-mean |
36 | t-gravity-accelerometer-magnitude-stdev |  
37 | t-body-accelerometer-jerk-magnitude-mean |
38 | t-body-accelerometer-jerk-magnitude-stdev |
39 | t-body-gyroscope-magnitude-mean |
40 | t-body-gyroscope-magnitude-stdev |         
41 | t-body-gyroscope-jerk-magnitude-mean |
42 | t-body-gyroscope-jerk-magnitude-stdev |
43 | f-body-accelerometer-mean-x |              
44 | f-body-accelerometer-mean-y |
45 | f-body-accelerometer-mean-z |
46 | f-body-accelerometer-stdev-x |      
47 | f-body-accelerometer-stdev-y | 
48 | f-body-accelerometer-stdev-z | 
49 | f-body-accelerometer-jerk-mean-x |
50 | f-body-accelerometer-jerk-mean-y |
51 | f-body-accelerometer-jerk-mean-z |
52 | f-body-accelerometer-jerk-stdev-x |        
53 | f-body-accelerometer-jerk-stdev-y |
54 | f-body-accelerometer-jerk-stdev-z |        
55 | f-body-gyroscope-mean-x |
56 | f-body-gyroscope-mean-y |
57 | f-body-gyroscope-mean-z |
58 | f-body-gyroscope-stdev-x |
59 | f-body-gyroscope-stdev-x |
60 | f-body-gyroscope-stdev-x |
61 | f-body-accelerometer-magnitude-mean |
62 | f-body-accelerometer-magnitude-stdev |
63 | f-body-accelerometer-jerk-magnitude-mean |
64 | f-body-accelerometer-jerk-magnitude-stdev |
65 | f-body-gyroscope-magnitude-mean |
66 | f-body-gyroscope-magnitude-stdev |         
67 | f-body-gyroscope-jerk-magnitude-mean |
68 | f-body-gyroscope-jerk-magnitude-stdev |    

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)