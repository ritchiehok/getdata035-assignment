The script run_analysis.R performs the following steps:

#####Reads in data
* Reads in column headers (features.txt), activity labels (activity_labels.txt), subject numbers (subject_test.txt and subject_train.txt), activity readings (X_test.txt and X_train.txt) and activity numbers (Y_test.txt and Y_train.txt)
for the test and training sets

#####Merges the training and the test sets to create one data set
* Column binds the subject numbers, activity numbers and activity readings in both the test and training data sets
* Row binds the test and training data sets

#####Extracts only the measurements on the mean and standard deviation for each measurement 
* Inserts column headers into the into the merged data
* Removes duplicate columns
* Selects columns with 'mean' and 'std' in their name

#####Uses descriptive activity names to name the activities in the data set
* Adds a column that links activity names to the activity number codes 

#####Appropriately labels the data set with descriptive variable names 
* Re-names columns so that they conform to tidy data principles

#####From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Writes the averages for the mean and standard deviation columns by subject and by activity to a file called 'output.txt'
* Number of rows = 30 subjects x 6 activities = 180
* Number of columns = 66 averages of means and standard deviations
* Total number of averages = 180 x 66 = 11,880 averages
