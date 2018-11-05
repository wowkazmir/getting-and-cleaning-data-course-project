# Getting and Cleaning Data - Course Project

This is the course project for the third course in the Data Science Specialization track on Coursera. In this project an existing data set was used containing data from an accelerometer and gyroscope of a Samsung Galaxy S smartphone. The data has been cleaned to acquire a tidy data set to be used for future analysis.

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

The repository for this project contains the following files:

- `README.md`, describes the project and what the R script does
- `CodeBook.md`, describes the the data, variables, and transformations applied to clean the data
- `run_analysis.R`, the R script that was used to create the tidy data set
- `tidydata.txt`, the output file which contains the tidy data set.


## The R script does the following:

1. Checks if the data exists in the working directory; if not, downloads and extracts the data
2. Loads the training and test datasets along with the the corresponding activity labels and features
3. Merges the data sets keeping only the columns which reflect a mean or standard deviation
4. Converts the activity and feautures columns into more legible and descriptive variables
5. Creates a new data set that constains the mean and standard deviation for each variable for each activity and each subject
6. Writes this new tidy data set to a file called tidydata.txt.

