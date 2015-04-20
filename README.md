# Getting and Cleaning Data - Course Project

This is a repository for the Getting and Cleaning Data course project. The source material for the project is found at the following URL:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The repository contains the following files:

* this README.md;
* CodeBook.md: code book describing data and variables;
* average_dataset.txt: data table, see CodeBook.md for details;
* run_analysis.R: script performing transformations from the source material to the average_dataset.txt data table.

The script
* reads the X, y and subject tables from the source material;
* merges the training and test sets to create one data set;
* extracts the mean and standard deviation for each measurement in the original data set;
* assigns descriptive activity names to the data set;
* labels the data set with descriptive variable names;
* binds tables X, y and subject to yield a single tidy data set;
* from this tidy data set, creates and writes an independent data set with the average of each variable per different activity and subject.

In order for script run_analysis.R to run correctly, the source material should be unzipped in its directory.