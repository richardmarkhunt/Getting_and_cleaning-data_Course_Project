# This is a script which downloads a dataset from Coursera's Cloudfront storage
# and performs a number of functions to execute the instructions at steps 1 to 5
# in the course project outline for Getting and Cleaning Data.
# This script should be saved and run from your working directory in R.
#
# If no "data" folder exists exists as a subdirectory of the working directory
# create folder and download Dataset.zip
if (!file.exists("data")) {
  dir.create("data")
}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./data/Dataset.zip", method = "curl")
dateDownloaded <- date()
# unzip and extract txt files
unzip("./data/Dataset.zip", exdir = "./data", junkpaths = TRUE)
# read in "features" dataset containing descriptiive variable names
features <- read.table("./data/features.txt")
desc_var_names <- as.character(features[,2])
# read in train and test data files and associated subject/activity id's
X_train <- read.table("./data/X_train.txt", header = FALSE, col.names = desc_var_names, sep = "")
Y_train <- read.table("./data/Y_train.txt", header = FALSE, sep = "")
subject_train <- read.table("./data/subject_train.txt", header = FALSE, sep = "")
X_test <- read.table("./data/X_test.txt", header = FALSE, col.names = desc_var_names, sep = "")
Y_test <- read.table("./data/Y_test.txt", header = FALSE, sep = "")
subject_test <- read.table("./data/subject_test.txt", header = FALSE, sep = "")
# merge X_train, Y_train and subject_train dataframes
train_table <- cbind(subject_train, Y_train, X_train)
# merge X_test, Y_test and subject_test dataframes
test_table <- cbind(subject_test, Y_test, X_test)
# merge the train_table and test_table dataframes
merged_table <- rbind(train_table, test_table)
# changed variable names to "studentID" and "activity"
names(merged_table)[1] <- "studentID"
names(merged_table)[2] <- "activity"
# read in activty labels data file
activity_labels <- read.table("./data/activity_labels.txt", header = FALSE, sep = "")
# change activity numbers to descriptive activity labels
merged_table$activity <- activity_labels$V2[merged_table$activity]
# extract only mean and std columns from merged_table
mean_std_only_table <- select(merged_table, contains("studentID"), contains("activity"), contains("mean"), contains("std"))
# create independent tidy data set with the average of each variable
# for each activity and each subject
ind_tidydata_table <- mean_std_only_table %>% group_by(studentID, activity) %>% summarise_each(funs(mean))
# write the independent tidy data set as a txt file to the working directory
write.table(ind_tidydata_table, file = "ind_tidydata_table.txt", row.names = FALSE)
# end of script
