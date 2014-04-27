# Code Book
## Script process
Outline of the run_analysis.R script

1. Downloads data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip if it was not downloaded and saves it as `data.zip`
2. Extracts the data from `data.zip` into a folder called `UCI HAR Dataset`
3. Reads in and merges by row the `X_train.txt` and `X_test.txt`
4. Reads in the varible names from `features.txt` 
5. Reads in and adds the activity names from `activity_labels.txt`
6. Reads in and appends the subject ids from `subject_train.txt` and `subject_test.txt`
7. Extracts measurements on mean and standard deviation
8. Creates another data set with the average of each variable for each activity by subject
9. Orders the data set by subject id and activity
10. Saves measuremets on mean and std in `dataset1.csv` and average of each variable for each activity by subject in `dataset2.csv` in the result folder

### Dataset1.csv
10299 rows and 89 columns

### Dataset2.csv
180 rows and 89 columns