# Getting and cleaning data project

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. I create: 1) a tidy data set as described below, and 2) a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data called CodeBook.md. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this [article](http://example.com/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## run_analysis.R
This script requires no additional packages. To run it download it to your working directory and run the command `source("run_analysis.R")`

The script will produce a folder with original data called UCI HAR Dataset and a folder called result with two datasets described in the project description.

