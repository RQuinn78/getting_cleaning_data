##Codebook for run.analysis.R
The datafiles for this script come from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The dataset on which the run_analysis.R script runs can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The original dataset consists of measurements taken from 30 volunteers performing each of six activities while wearing a Smartphone on the waist. Using the phones embedded accelerometer and gyroscope, 3 axial linear acceleration and angular velocity were captured at a constant rate of 50 Hz. The run_analysis.R takes the mean and standard deviation measurements and calculates the mean of each of these measurements for each activity for each subject.

###Dictionary..
The measurements are split into time (t) and frequency (f) domains. Signals were taken from the accelerometer (acc) and gyroscope (gyro). Mag refers to the magnitude of the three dimensional body. Jerk refers to the time rate of change of acceleration.   

###Variables..
**Subjects** - Each subject is denoted by a number. 30 subjects in total..
**Activity** - This is a six level factor. The levels are Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying.

The run_analysis.R script produces the means of the meaurements below. 66 variables in total.

**tbodyacc-mean()-x, y, z** - The mean of the body acceleration signal in X/Y/Z direction..
**tbodyacc-std()-x, y, z** - The standard deviation of the body acceleration signal in x/Y/z direction..
**tgravityacc-mean()-x,y,z**- The mean of the gravity acceleration signal in X/Y/z direction..
**tgravityacc- std()-x,y,z** - The standard deviation of the gravity acceleration signal in X/Y/Z direction..
**tbodyaccjerk-mean()-x,y,z** - The mean of the time rate of change of body acceleration in X/Y/Z direction..
**tbodyaccjerk-std()-x,y,z** - The mean of the time rate of change of body acceleration in X/Y/Z direction..
**tbodygyro-mean()-x, y,z** - The mean of the body angular velocity in X/Y/Z direction..
**tbodygyro-std()-x, y, z** - The standard deviation of the body angular velocity in X/Y/Z direction..
**tbodygyrojerk-mean()-x,y,z** - The mean of the time rate of change of body angular velocity in X/Y/Z direction..
**tbodygyrojerk-std()-x,y,z** - The standard deviation of the time rate of change of body angular velocity in X/Y/Z direction..
**tbodyaccmag-mean()**- the mean of the magnitude of the three dimensional body acceleration signal..
**tbodyaccmag-std()** - The standard deviation of the magnitude of the three dimensional body acceleration signal..
**tgravityaccmag-mean()** - The mean of the magnitude of the three dimensional gravity acceleration signal..
**tgravityaccmag-std()**- The standard deviation of the magnitude of the three dimensional gravity acceleration signal..
**tbodyaccjerkmag-mean()**- The mean of the magnitude of the three dimensional time rate of change of body acceleration..
**tbodyaccjerkmag-std()** - The standard deviation of the magnitude of the three dimensional time rate of change of body accleration..
**tbodygyromag-mean()** - The mean of the magnitude of the three dimensional body angular velocity..
**tbodygyromag-std()** - The standard deviation of the magnitude of the three dimensional body angular velocity..
**tbodygyrojerkmag-mean()** - The mean of the magnitude of the three dimensional time rate of change of body angular velocity..
**tbodygyrojerkmag-std()** - The standard deviation of the magnitude of the three dimensional rate of change of body angular velocity..
**fbodyacc-mean()-x,y,z** - The mean of the body acceleration signal (frequncy domain) in X/Y/Z direction..
**fbodyacc-std()- x,y,z** - The standard deviation of the body acceleration signal (frequency domain) in X/Y/Z direction..
**fbodyaccjerk-mean()-x,y,z** -  The mean of the frequency rate of change of body acceleration in X/Y/Z direction ..
**fbodyaccjerk-std()-x,y,z** - The standard deviation of the frequency rate of change of body acceleration in X/Y/Z direction..
**fbodygyro-mean()-x,y,z** - The mean of the frequency rate of change of body angular velocity in X/Y/Z direction..
**fbodygyro-std()-x,y,z** - The standard deviation of the frequency rate of change of body angular velocity in X/Y/Z direction..
**fbodyaccmag-mean()** - The mean of the magnitude of the three dimensional body acceleration signal (frequency domain)..
**fbodyaccmag-std()** - The standard deviation of the magnitude of the three dimensional body acceleration signal (frequency domain)..
**fbodybodyaccjerkmag-mean()** - The mean of the magnitude of the three dimensional frequency rate of change of body acceleration..
**fbodybodyaccjerkmag-std()** - The standard deviation of the magnitude of the three dimensional frequency of body acceleration.. 
**fbodybodygyromag-mean()** - The mean of the magnitude of the three dimensional frequency of body angular velocity..
**fbodybodygyromag-std()** - The standard deviation of the magnitude of the three dimensional frequency of body angular velocity..
**fbodybodygyrojerkmag-mean()** - The mean of the magnitude of the three dimensional frequency rate of change of body angular velocity..
**fbodybodygyrojerkmag-std()** - The standard deviation of the magnitude of three dimensional frequnecy rate of change of body angular velocity..


### Reference
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
 
