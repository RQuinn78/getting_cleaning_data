# getting_cleaning_data
Repository for project work for Getting and Cleaning Data - Coursera

##Explanation of run_analysis.R
*Load the libraries needed for the script to run (plyr and dplyr).
*Create the test_data object 
	*Read the x_test, y_test and subject_test files
	*Name subjects column in subject test
	*cbind the 3 files to create the test data
	* remove objects that are no longer needed
*Create the train_data object  
	*Read the x_train, y_train and subject_train files
	*Name subjects column in subject train
	*cbind the 3 files to create the training data
	*remove objects that are no longer needed
*Bind the training and test data sets to create the main dataset and remove objects no longer needed
*Extract the mean and standard deviation measurements from the features file (66 measurements)
*Extract just the mean and standard deviation measurements from the main dataset
	* This is done by first splitting the main dataset
	*Use the list of means and standard deviation colnames from the features file to extract this data from main dataset
	*Label the columns using the list from the features file
	*Bind the subjects, activity and means and standard deviations measurements to create one final object
	*remove objects that are no longer needed
*Add activity labels to the final object
*Change variable names to lowercase as per Week 4 Lecture - Editing Text Variables
*Arrange and group the final object by subjects and activity and summarise by means and write the output.
*This leaves a tidy dataset with each row representing the mean of each variable for each activity for each subject
*The data is tidy because there is just one variable per column and each observation of this variable is in a different row
