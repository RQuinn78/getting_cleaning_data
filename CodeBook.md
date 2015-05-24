##Codebook for run.analysis.R
The datafiles for this script come from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The dataset on which the run_analysis.R script runs can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The original dataset consists of measurements taken from 30 volunteers performing each of six activities while wearing a Smartphone on the waist. Using the phones embedded accelerometer and gyroscope, 3 axial linear acceleration and angular velocity were captured at a constant rate of 50 Hz. The run_analysis.R script takes the mean and standard deviation measurements and calculates the mean of each of these measurements for each activity for each subject.

###Dictionary..
The measurements are split into time (t) and frequency (f) domains. Signals were taken from the accelerometer (acc) and gyroscope (gyro). Mag refers to the magnitude of the three dimensional body. Jerk refers to the time rate of change of acceleration.   

###Variables..
**Subjects** - Each subject is denoted by a number. 30 subjects in total<br>
**Activity** - This is a six level factor. The levels are Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying.

The run_analysis.R script produces the means of the meaurements below. 66 measurement variables in total.

**tbodyacc-mean()-x, y, z** - The mean of the body acceleration signal in X/Y/Z direction <br>
**tbodyacc-std()-x, y, z** - The standard deviation of the body acceleration signal in x/Y/z direction <br>
**tgravityacc-mean()-x,y,z**- The mean of the gravity acceleration signal in X/Y/z direction <br>
**tgravityacc- std()-x,y,z** - The standard deviation of the gravity acceleration signal in X/Y/Z direction. <br>
**tbodyaccjerk-mean()-x,y,z** - The mean of the time rate of change of body acceleration in X/Y/Z direction. <br>
**tbodyaccjerk-std()-x,y,z** - The mean of the time rate of change of body acceleration in X/Y/Z direction.<br>
**tbodygyro-mean()-x, y,z** - The mean of the body angular velocity in X/Y/Z direction. <br>
**tbodygyro-std()-x, y, z** - The standard deviation of the body angular velocity in X/Y/Z direction.<br>
**tbodygyrojerk-mean()-x,y,z** - The mean of the time rate of change of body angular velocity in X/Y/Z direction.<br>
**tbodygyrojerk-std()-x,y,z** - The standard deviation of the time rate of change of body angular velocity in X/Y/Z direction.<br>
**tbodyaccmag-mean()**- the mean of the magnitude of the three dimensional body acceleration signal. <br>
**tbodyaccmag-std()** - The standard deviation of the magnitude of the three dimensional body acceleration signal.<br>
**tgravityaccmag-mean()** - The mean of the magnitude of the three dimensional gravity acceleration signal.<br>
**tgravityaccmag-std()**- The standard deviation of the magnitude of the three dimensional gravity acceleration signal.<br>
**tbodyaccjerkmag-mean()**- The mean of the magnitude of the three dimensional time rate of change of body acceleration.<br>
**tbodyaccjerkmag-std()** - The standard deviation of the magnitude of the three dimensional time rate of change of body accleration.<br>
**tbodygyromag-mean()** - The mean of the magnitude of the three dimensional body angular velocity.<br>
**tbodygyromag-std()** - The standard deviation of the magnitude of the three dimensional body angular velocity.<br>
**tbodygyrojerkmag-mean()** - The mean of the magnitude of the three dimensional time rate of change of body angular velocity.<br>
**tbodygyrojerkmag-std()** - The standard deviation of the magnitude of the three dimensional rate of change of body angular velocity.<br>
**fbodyacc-mean()-x,y,z** - The mean of the body acceleration signal (frequncy domain) in X/Y/Z direction.<br>
**fbodyacc-std()- x,y,z** - The standard deviation of the body acceleration signal (frequency domain) in X/Y/Z direction.<br>
**fbodyaccjerk-mean()-x,y,z** -  The mean of the frequency rate of change of body acceleration in X/Y/Z direction .<br>
**fbodyaccjerk-std()-x,y,z** - The standard deviation of the frequency rate of change of body acceleration in X/Y/Z direction.<br>
**fbodygyro-mean()-x,y,z** - The mean of the frequency rate of change of body angular velocity in X/Y/Z direction.<br>
**fbodygyro-std()-x,y,z** - The standard deviation of the frequency rate of change of body angular velocity in X/Y/Z direction.<br>
**fbodyaccmag-mean()** - The mean of the magnitude of the three dimensional body acceleration signal (frequency domain).<br>
**fbodyaccmag-std()** - The standard deviation of the magnitude of the three dimensional body acceleration signal (frequency domain).<br>
**fbodybodyaccjerkmag-mean()** - The mean of the magnitude of the three dimensional frequency rate of change of body acceleration.<br>
**fbodybodyaccjerkmag-std()** - The standard deviation of the magnitude of the three dimensional frequency of body acceleration.<br> 
**fbodybodygyromag-mean()** - The mean of the magnitude of the three dimensional frequency of body angular velocity.<br>
**fbodybodygyromag-std()** - The standard deviation of the magnitude of the three dimensional frequency of body angular velocity.<br>
**fbodybodygyrojerkmag-mean()** - The mean of the magnitude of the three dimensional frequency rate of change of body angular velocity.<br>
**fbodybodygyrojerkmag-std()** - The standard deviation of the magnitude of three dimensional frequnecy rate of change of body angular velocity.


### Reference
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
 
