# Getting and cleaning data project

This project was done for the "Getting and Cleaning Data" class offered by Coursera. The purpose of this project is to demonstrate ability to collect, work with, and clean a data set in R. The goal is to prepare tidy data that can be used for later analysis. I create: 1) two tidy data sets described below, and 2) a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data called `CodeBook.md`. 

## Project prompt
One of the most exciting areas in all of data science right now is wearable computing - see for example this [article](http://example.com/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I create an R script `run_analysis.R` that does the following: 

1. Merges the training and the test sets to create one data set.
2. Appropriately labels the data set with descriptive activity names. 
3. Extracts only the measurements on the mean and standard deviation for each variable and stores them in `dataset1.csv`. 
4. Creates a second, independent tidy data set `dataset2.csv` with the average of each variable for each activity and each subject. 

## run_analysis.R
This script requires no additional packages. To run it source the script like so `source("run_analysis.R")` and run command `run_analysis()` in R.

The script will produce a folder with original data called UCI HAR Dataset and a folder called result with two datasets described in the project description.

