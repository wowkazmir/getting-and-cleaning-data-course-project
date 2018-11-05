library(plyr)

## Downloads the data into the system

if (!file.exists("Dataset.zip")){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileURL, "Dataset.zip")
}  
if (!file.exists("UCI HAR Dataset")) { 
    unzip("Dataset.zip") 
}

pathdata <- file.path("~//Data Science//Coursera_DS//Getting and Cleaning Data//ProgrammingAssignment//UCI HAR Dataset")

files <- list.files(pathdata, recursive=TRUE)

## Loads the various data sets

# Reads the values and activities in the training data

TrainSet <- read.table(file.path(pathdata, "train", "X_train.txt"))
TrainLabels <- read.table(file.path(pathdata, "train", "y_train.txt"))
SubTrain <- read.table(file.path(pathdata, "train", "subject_train.txt"))

# Reads the values and activities in the test data

TestSet <- read.table(file.path(pathdata, "test", "X_test.txt"))
TestLabels <- read.table(file.path(pathdata, "test", "y_test.txt"))
SubTest <- read.table(file.path(pathdata, "test", "subject_test.txt"))

# Reads the features data

Features <- read.table(file.path(pathdata, "features.txt"))

#Reads activity labels data

ActLabels <- read.table(file.path(pathdata, "activity_labels.txt"))
colnames(ActLabels) <- c("activityId", "activityLabel")

## Merges the data sets into one

SetDT <- rbind(TrainSet, TestSet)
ActivityDT <- rbind(TrainLabels, TestLabels)
SubDT <- rbind(SubTrain, SubTest)
MergedDT <- cbind(SubDT, ActivityDT, SetDT)

## Removes individual data tables to save memory

rm(TrainSet, TrainLabels, SubTrain, TestLabels, TestSet, SubTest)

## Extracts the mean and std for each measurement

KeepFeatures <- Features[grepl("mean|std|Subject|ActivityId", Features[, 2]), 2]
Activity <- MergedDT[, c(1, 2, KeepFeatures)]

## Uses descriptive names for the activities

Activity[, 2] <- ActLabels[Activity[,2], 2]

## Adds labels for the measured variables

ActivityCols <- c("subject", "activity", as.character(KeepFeatures))

ActivityCols <- gsub("[-()]", "", ActivityCols)

ActivityCols <- gsub("^f", "frequencyDomain", ActivityCols)
ActivityCols <- gsub("^t", "timeDomain", ActivityCols)
ActivityCols <- gsub("Acc", "Accelerometer", ActivityCols)
ActivityCols <- gsub("BodyBody", "Body", ActivityCols)
ActivityCols <- gsub("Gyro", "Gyroscope", ActivityCols)
ActivityCols <- gsub("Mag", "Magnitude", ActivityCols)
ActivityCols <- gsub("Freq", "Frequency", ActivityCols)
ActivityCols <- gsub("mean", "Mean", ActivityCols)
ActivityCols <- gsub("std", "StandardDeviation", ActivityCols)

colnames(Activity) <- ActivityCols

## Creates a new data set with the mean and std for each variable for each activity and each subject.

tidy <- ddply(.data = Activity, .variables = c("subject", "activity"), .fun = numcolwise(mean))
write.table(tidy, file = ".//UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE, quote = FALSE)

