## ReadMe file for Getting and Cleaning Data Course Project

This GitHub repository includes the R script and associated documentation for the Course Project which is a requirement for the "Getting and Cleaning data" course on Coursera.

### Project requirements

The project requirements are outlined on the Coursera Course Project webpage and are reproduced (in part) here:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. 

You will be required to submit: 

* a tidy data set as described below
* a link to a Github repository with your script for performing the analysis, and
* a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

You should create one R script called run_analysis.R that does the following:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Source data for project requirements

More background and information on the nature of the experiments carried out, the measurements recorded and the raw data files (txt format) produced are summarised in the original readme file that accompanies these raw data files (refer to the URL reproduced above to access that readme file). 

### Files included in this repository

* README.md: this file
* CodeBook.md: information on studentID, activities and measurements recorded, raw data files containing experiment data and the data transformations undertaken as part of this project to produce a tidy data set
* run_analysis.R: R script to transform raw data files into a tidy data set which is represented by a text file output by this script
* ind_tidydata_table.txt: tidy data set output of R script

END