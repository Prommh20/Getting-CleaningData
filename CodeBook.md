# Code Book 
This is the code book of the project

# About the source data 
The data retired of the UCI Machine Learning Repository.The archive was created as an ftp archive in 1987 by David Aha and fellow graduate students at UC Irvine

Source Site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

File Download Link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# The R Script
The script is divided as the follows:

### Creating and Setting the directory

### Downloading and unzipping the dataset

#### 1:
##### Reading the training datasets
#### 2:
##### Reading the testing datasets
#### 3:
##### Reading feature vector
#### 4:
##### Reading activity labels
#### 5:
##### Assigning variable names
#### 6:
##### Merging all the datasets into a single set
#### 7:
##### Extracting specific values like mean and sd
#### 8:
##### Creating subset
#### 9:
##### Creating a tidy dataset
#### 9.1:
##### Writing data into a txt file

## About Variables:
* `train_x`,`train_y`,`test_x`,`test_y`,`train_sub` and `test_sub` contain the data from the downloaded file.
* `train`,`test` and `dataset` merge the previous datasets for further analysis.
* `feature` and `activityLablels` contains the features and activity labels of the datasets respectively.
