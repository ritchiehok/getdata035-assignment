library(dplyr)

## column headers
features <- read.table("features.txt")

## activity label
activity.labels <- read.table("activity_labels.txt")

## subject = subject number
## x = activity reading
## y = activity number
subject.test <- read.table("subject_test.txt")
subject.train <- read.table("subject_train.txt")
x.test <- read.table("X_test.txt")
y.test <- read.table("y_test.txt")
x.train <- read.table("X_train.txt")
y.train <- read.table("y_train.txt")

## step 1

## column bind subject number, activity number and activity reading
test.complete <- cbind(subject.test, y.test, x.test)
train.complete <- cbind(subject.train, y.train, x.train)

## row bind test and train data sets
data <- rbind(test.complete, train.complete)

## step 2

## insert column headers
names(data) <- c("subject", "activity", as.character(features[, 2]))

## remove duplicate columns
data <- data[, !duplicated(colnames(data), fromLast = TRUE)] 

## select columns with mean and std in their name
data <- select(data, matches('subject|activity|-mean\\(\\)|std\\(\\)'))

## step 3

## label 'activity_labels' data set
names(activity.labels) <- c("activity", "activities")

## merge activity names into main data set
data <- merge(data, activity.labels, by = "activity")

## step 4

## rename columns conforming to tidy data principles
names(data) <- sub("-mean\\(\\)", "mean", names(data))
names(data) <- sub("-std\\(\\)", "stdev", names(data))
names(data) <- sub("BodyBody", "body-", names(data))
names(data) <- sub("Body", "body-", names(data))
names(data) <- sub("Acc", "accelerometer-", names(data))
names(data) <- sub("Gravity", "gravity-", names(data))
names(data) <- sub("Jerk", "jerk-", names(data))
names(data) <- sub("Gyro", "gyroscope-", names(data))
names(data) <- sub("Mag", "magnitude-", names(data))
names(data) <- sub("^t", "t-", names(data))
names(data) <- sub("^f", "f-", names(data))
names(data) <- sub("-X$", "-x", names(data))
names(data) <- sub("-Y$", "-y", names(data))
names(data) <- sub("-Z$", "-z", names(data))

## step 5

## averages by subject/activity
write.table(data %>%
    group_by(subject, activities) %>%
    summarize_each(funs(mean)) %>%
    select(-activity), file = "output.txt", row.names = FALSE)
