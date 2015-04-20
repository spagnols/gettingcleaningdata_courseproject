## Course Project Codebook

### The data

File average_dataset.txt contains mean and standard deviation data collected from sensors of the Samsung Galaxy S II smartphone. This data refers to a set of experiments [ANG13] carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six physical activities wearing the smartphone on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

File average_dataset.txt contains a tidy data table where columns represent the subject ID, the physical activity, and 66 different variables containing the mean and standard deviation of 33 signals, and rows represent the average values of all available measurements for each given subject and activity.


### Variables

The 68 variables contained in the dataset are:

[1]	subject 
[2]	activity
[3]	timeBodyAccelerationMeanX
[4]	timeBodyAccelerationMeanY
[5]	timeBodyAccelerationMeanZ
[6]	timeBodyAccelerationStdX
[7]	timeBodyAccelerationStdY
[8]	timeBodyAccelerationStdZ
[9]	timeGravityAccelerationMeanX
[10	timeGravityAccelerationMeanY
[11]	timeGravityAccelerationMeanZ
[12]	timeGravityAccelerationStdX
[13]	timeGravityAccelerationStdY
[14]	timeGravityAccelerationStdZ
[15]	timeBodyAccelerationJerkMeanX
[16]	timeBodyAccelerationJerkMeanY
[17]	timeBodyAccelerationJerkMeanZ
[18]	timeBodyAccelerationJerkStdX
[19]	timeBodyAccelerationJerkStdY
[20]	timeBodyAccelerationJerkStdZ
[21]	timeBodyGyroMeanX
[22]	timeBodyGyroMeanY
[23]	timeBodyGyroMeanZ
[24]	timeBodyGyroStdX
[25]	timeBodyGyroStdY
[26]	timeBodyGyroStdZ
[27]	timeBodyGyroJerkMeanX
[28]	timeBodyGyroJerkMeanY
[29]	timeBodyGyroJerkMeanZ
[30]	timeBodyGyroJerkStdX
[31]	timeBodyGyroJerkStdY
[32]	timeBodyGyroJerkStdZ
[33]	timeBodyAccelerationMagMean
[34]	timeBodyAccelerationMagStd
[35]	timeGravityAccelerationMagMean
[36]	timeGravityAccelerationMagStd
[37]	timeBodyAccelerationJerkMagMean
[38]	timeBodyAccelerationJerkMagStd
[39]	timeBodyGyroMagMean
[40]	timeBodyGyroMagStd
[41]	timeBodyGyroJerkMagMean
[42]	timeBodyGyroJerkMagStd
[43]	frequencyBodyAccelerationMeanX
[44]	frequencyBodyAccelerationMeanY
[45]	frequencyBodyAccelerationMeanZ
[46]	frequencyBodyAccelerationStdX
[47]	frequencyBodyAccelerationStdY
[48]	frequencyBodyAccelerationStdZ
[49]	frequencyBodyAccelerationJerkMeanX
[50]	frequencyBodyAccelerationJerkMeanY
[51]	frequencyBodyAccelerationJerkMeanZ
[52]	frequencyBodyAccelerationJerkStdX
[53]	frequencyBodyAccelerationJerkStdY
[54]	frequencyBodyAccelerationJerkStdZ
[55]	frequencyBodyGyroMeanX
[56]	frequencyBodyGyroMeanY
[57]	frequencyBodyGyroMeanZ
[58]	frequencyBodyGyroStdX
[59]	frequencyBodyGyroStdY
[60]	frequencyBodyGyroStdZ
[61]	frequencyBodyAccelerationMagMean
[62]	frequencyBodyAccelerationMagStd
[63]	frequencyBodyAccelerationJerkMagMean
[64]	frequencyBodyAccelerationJerkMagStd
[65]	frequencyBodyGyroMagMean
[66]	frequencyBodyGyroMagStd
[67]	frequencyBodyGyroJerkMagMean
[68]	frequencyBodyGyroJerkMagStd

Variable [1] (integer, 1 to 30) contains the subject ID.
Variable [2] (character, 6 values: {laying, sitting, standing, walking, walkingDownstairs, walkingUpstairs}) contains the activity name.
Variables [3]-[68] (numeric, [-1 1]) contain values of the mean and standard deviation of each of the 33 signals normalized between -1 and 1. Variable names are self-explanatory and combine the following fields:
* time				time-domain measurement
* frequency			frequency-domain measurement
* Body				body-related measurement
* Gravity			gravity-related measurement
* Acceleration			linear acceleration measurement
* Gyro				angular velocity measurement
* Jerk				jerk measurement
* Mag				magnitude of 3-D measurements
* Mean				average measurement value
* Std				standard deviation of measurement
* X / Y / Z			X-, Y-, and Z-axis measurements	


### References

[ANG13] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.