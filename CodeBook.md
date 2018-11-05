# Code book for the course project

This code book aims to identify and describe the elements found in the data set `tidydata.txt`.

See the `README.md` file in this repository for background information on the project.

The code book is divided into three sections. The first section describes the data, the second section identifies the variables measured in the experiment, and the final section explains which transformations were carried out to acquire the tidy data set.

## Data

The `tidydata.txt` data file is a text file containing values separated by spaces.

The tidy data set contains data for both the time-domain and frequency-domain sensor measurements. It is made up of a matrix with the mean and standard deviation of 30 subjects and six different activities. The first row in the data set contains the labels for the variables measured. All  of the measurements are stored as floating-point values, normalized and bounded within [-1,1]. 

## Variables

- `subject`

	Subject id, integer ranging from 1 to 30.
	subjects were within an age bracket of 19-48 years. 

- `activity`

	Activity id, string of characters with 6 possible values
	- `LAYING`
	- `SITTING`
	- `STANDING`
	- `WALKING`
	- `WALKING_DOWNSTAIRS` 
	- `WALKING_UPSTAIRS`.


- `The sensor measurements`
	
	'XYZ' are used to denote 3-axial signals in the X, Y and Z directions.

	* `timeDomainBodyAccelerometerMeanX`
	 `timeDomainBodyAccelerometerMeanY`
	 `timeDomainBodyAccelerometerMeanZ`
	 `timeDomainBodyAccelerometerStandardDeviationX`
	 `timeDomainBodyAccelerometerStandardDeviationY`
	 `timeDomainBodyAccelerometerStandardDeviationZ`

	* `timeDomainGravityAccelerometerMeanX`
	`timeDomainGravityAccelerometerMeanY`
	`timeDomainGravityAccelerometerMeanZ`
	`timeDomainGravityAccelerometerStandardDeviationX`
	`timeDomainGravityAccelerometerStandardDeviationY`
	`timeDomainGravityAccelerometerStandardDeviationZ`

	* `timeDomainBodyAccelerometerJerkMeanX`
	`timeDomainBodyAccelerometerJerkMeanY`
	`timeDomainBodyAccelerometerJerkMeanZ`
	`timeDomainBodyAccelerometerJerkStandardDeviationX`
	`timeDomainBodyAccelerometerJerkStandardDeviationY`
	`timeDomainBodyAccelerometerJerkStandardDeviationZ`

	* `timeDomainBodyGyroscopeMeanX`
	`timeDomainBodyGyroscopeMeanY`
	`timeDomainBodyGyroscopeMeanZ`
	`timeDomainBodyGyroscopeStandardDeviationX`
	`timeDomainBodyGyroscopeStandardDeviationY`
	`timeDomainBodyGyroscopeStandardDeviationZ`

	* `timeDomainBodyGyroscopeJerkMeanX`
	`timeDomainBodyGyroscopeJerkMeanY`
	`timeDomainBodyGyroscopeJerkMeanZ`
	`timeDomainBodyGyroscopeJerkStandardDeviationX`
	`timeDomainBodyGyroscopeJerkStandardDeviationY`
	`timeDomainBodyGyroscopeJerkStandardDeviationZ`

	* `timeDomainBodyAccelerometerMagnitudeMean`
	`timeDomainBodyAccelerometerMagnitudeStandardDeviation`

	* `timeDomainGravityAccelerometerMagnitudeMean`
	`timeDomainGravityAccelerometerMagnitudeStandardDeviation`

	* `timeDomainBodyAccelerometerJerkMagnitudeMean`
	`timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`

	* `timeDomainBodyGyroscopeMagnitudeMean`
	`timeDomainBodyGyroscopeMagnitudeStandardDeviation`

	* `timeDomainBodyGyroscopeJerkMagnitudeMean`
	`timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`

	* `frequencyDomainBodyAccelerometerMeanX`
	`frequencyDomainBodyAccelerometerMeanY`
	`frequencyDomainBodyAccelerometerMeanZ`

	* `frequencyDomainBodyAccelerometerStandardDeviationX`
	`frequencyDomainBodyAccelerometerStandardDeviationY`
	`frequencyDomainBodyAccelerometerStandardDeviationZ`

	* `frequencyDomainBodyAccelerometerMeanFrequencyX`
	`frequencyDomainBodyAccelerometerMeanFrequencyY`
	`frequencyDomainBodyAccelerometerMeanFrequencyZ`

	* `frequencyDomainBodyAccelerometerJerkMeanX`
	`frequencyDomainBodyAccelerometerJerkMeanY`
	`frequencyDomainBodyAccelerometerJerkMeanZ`

	* `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
	`frequencyDomainBodyAccelerometerJerkStandardDeviationY`
	`frequencyDomainBodyAccelerometerJerkStandardDeviationZ`

	* `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
	`frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
	`frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`

	* `frequencyDomainBodyGyroscopeMeanX`
	`frequencyDomainBodyGyroscopeMeanY`
	`frequencyDomainBodyGyroscopeMeanZ`

	* `frequencyDomainBodyGyroscopeStandardDeviationX`
	`frequencyDomainBodyGyroscopeStandardDeviationY`
	`frequencyDomainBodyGyroscopeStandardDeviationZ`

	* `frequencyDomainBodyGyroscopeMeanFrequencyX`
	`frequencyDomainBodyGyroscopeMeanFrequencyY`
	`frequencyDomainBodyGyroscopeMeanFrequencyZ`

	* `frequencyDomainBodyAccelerometerMagnitudeMean`
	`frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
	`frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`

	* `frequencyDomainBodyAccelerometerJerkMagnitudeMean`
	`frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
	`frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`

	* `frequencyDomainBodyGyroscopeMagnitudeMean`
	`frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
	`frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`

	* `frequencyDomainBodyGyroscopeJerkMagnitudeMean`
	`frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
	`frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`

## Transformations

The source data can be retrieved from: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

In order to acquire a tidy date set the following transformations were applied:
1. The training and test data sets were given separate tags of either "Train" or "Test" respectively.
1. Both data sets were then and merged into a new data set called "MergedDT"
1. The activities in the data were originally coded as integers between 1 and 6, and thus replaced with descriptive names taken from the `activity_labels.txt` file.
1. The different sensor measurements were originally coded with abbreviations only, and thus replaced with descriptive variable names. This was done through applying the following set of rules:
	- All special characters such as `(`, `)`, and `-` were removed from the variable names
	- The initial `f` and `t` were replaced to `frequencyDomain` and `timeDomain` respectively
	- `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` were replaced with `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean`, and `StandardDeviation` respectively
	- Fixed a typo where Bodybody is probably supposed to be singular.
