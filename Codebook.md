## Codebook file for Getting and Cleaning Data
## Course Project

## Project Description

This project uses the raw data files obtained from UCI Machine Learning repository. It uses the Human Activity Recognition Using Smartphones Data Set used by the original collectors to conduct experiments. The data set was built from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. Further details on the experiments and raw data collected can be obtianed from the UCI Machine Learning repository here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare and output a tidy data set as evidence of the demonstration of this ability.

## Study design and data processing

### Collection of the raw data

The raw data collected for this project was contained in a series of dataset text files contained in a zip file provided from the abovementioned website.  The relevant text files utlised are outlined in the README file that accompanies the files and include the folowing files:

* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'X_train.txt': Training set.
* 'y_train.txt': Training labels.
* 'X_test.txt': Test set.
* 'y_test.txt': Test labels.
* 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

## Creating and cleaning the tidy datafile

The run_analysis.R script performs the following broad steps to create and output a tidy data file labelled "ind_tidydata_table.txt":

* creates a subfolder (/data) to the working directory if none exists;
* downloads the zip file and unzips the contents of txt files (see above) into the /data folder
* reads into R all relevant txt files as dataframes;
* cbinds the subjectID, activity, and  train dataframes;
* cbinds the subjectID, activity, and  test dataframes;
* rbinds train and test dataframes to produce one merged dataframe;
* change variable names to "studentID" and "activity";
* read into R activity labels txt files as a dataframe;
* change generic activity labels (V1, V2 ...) to descriptive activity labels;
* retain only "mean" and "std" variables in merged dataframe (86 in total);
* create independent tidy data set dataframe that calculates the average of each variable for each activity and each subjectID;
* write the independent tidy data set dataframe as a txt file to the working directory.

## Description of the variables in the independent tidy data set

The independent tidy data set contains 180 observations (30 students x 6 activities) with 88 variables divided as follows:

* an identifier of the subject who carried out the experiment (subjectID): 1,2,3...30
* an activity label (activity): WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* 86 variables with time and frequency domain signal variables (numeric)

### Variables present in the dataset

The variables used are as follows:

 [1] "studentID"                           
 [2] "activity"                            
 [3] "tBodyAcc.mean...X"                   
 [4] "tBodyAcc.mean...Y"                   
 [5] "tBodyAcc.mean...Z"                   
 [6] "tGravityAcc.mean...X"                
 [7] "tGravityAcc.mean...Y"                
 [8] "tGravityAcc.mean...Z"                
 [9] "tBodyAccJerk.mean...X"               
[10] "tBodyAccJerk.mean...Y"               
[11] "tBodyAccJerk.mean...Z"               
[12] "tBodyGyro.mean...X"                  
[13] "tBodyGyro.mean...Y"                  
[14] "tBodyGyro.mean...Z"                  
[15] "tBodyGyroJerk.mean...X"              
[16] "tBodyGyroJerk.mean...Y"              
[17] "tBodyGyroJerk.mean...Z"              
[18] "tBodyAccMag.mean.."                  
[19] "tGravityAccMag.mean.."               
[20] "tBodyAccJerkMag.mean.."              
[21] "tBodyGyroMag.mean.."                 
[22] "tBodyGyroJerkMag.mean.."             
[23] "fBodyAcc.mean...X"                   
[24] "fBodyAcc.mean...Y"                   
[25] "fBodyAcc.mean...Z"                   
[26] "fBodyAcc.meanFreq...X"               
[27] "fBodyAcc.meanFreq...Y"               
[28] "fBodyAcc.meanFreq...Z"               
[29] "fBodyAccJerk.mean...X"               
[30] "fBodyAccJerk.mean...Y"               
[31] "fBodyAccJerk.mean...Z"               
[32] "fBodyAccJerk.meanFreq...X"           
[33] "fBodyAccJerk.meanFreq...Y"           
[34] "fBodyAccJerk.meanFreq...Z"           
[35] "fBodyGyro.mean...X"                  
[36] "fBodyGyro.mean...Y"                  
[37] "fBodyGyro.mean...Z"                  
[38] "fBodyGyro.meanFreq...X"              
[39] "fBodyGyro.meanFreq...Y"              
[40] "fBodyGyro.meanFreq...Z"              
[41] "fBodyAccMag.mean.."                  
[42] "fBodyAccMag.meanFreq.."              
[43] "fBodyBodyAccJerkMag.mean.."          
[44] "fBodyBodyAccJerkMag.meanFreq.."      
[45] "fBodyBodyGyroMag.mean.."             
[46] "fBodyBodyGyroMag.meanFreq.."         
[47] "fBodyBodyGyroJerkMag.mean.."         
[48] "fBodyBodyGyroJerkMag.meanFreq.."     
[49] "angle.tBodyAccMean.gravity."         
[50] "angle.tBodyAccJerkMean..gravityMean."
[51] "angle.tBodyGyroMean.gravityMean."    
[52] "angle.tBodyGyroJerkMean.gravityMean."
[53] "angle.X.gravityMean."                
[54] "angle.Y.gravityMean."                
[55] "angle.Z.gravityMean."                
[56] "tBodyAcc.std...X"                    
[57] "tBodyAcc.std...Y"                    
[58] "tBodyAcc.std...Z"                    
[59] "tGravityAcc.std...X"                 
[60] "tGravityAcc.std...Y"                 
[61] "tGravityAcc.std...Z"                 
[62] "tBodyAccJerk.std...X"                
[63] "tBodyAccJerk.std...Y"                
[64] "tBodyAccJerk.std...Z"                
[65] "tBodyGyro.std...X"                   
[66] "tBodyGyro.std...Y"                   
[67] "tBodyGyro.std...Z"                   
[68] "tBodyGyroJerk.std...X"               
[69] "tBodyGyroJerk.std...Y"               
[70] "tBodyGyroJerk.std...Z"               
[71] "tBodyAccMag.std.."                   
[72] "tGravityAccMag.std.."                
[73] "tBodyAccJerkMag.std.."               
[74] "tBodyGyroMag.std.."                  
[75] "tBodyGyroJerkMag.std.."              
[76] "fBodyAcc.std...X"                    
[77] "fBodyAcc.std...Y"                    
[78] "fBodyAcc.std...Z"                    
[79] "fBodyAccJerk.std...X"                
[80] "fBodyAccJerk.std...Y"                
[81] "fBodyAccJerk.std...Z"                
[82] "fBodyGyro.std...X"                   
[83] "fBodyGyro.std...Y"                   
[84] "fBodyGyro.std...Z"                   
[85] "fBodyAccMag.std.."                   
[86] "fBodyBodyAccJerkMag.std.."           
[87] "fBodyBodyGyroMag.std.."              
[88] "fBodyBodyGyroJerkMag.std.."

END