### Code Book

The tidy dataset includes the following fields:

*activity_name
*subject
*TimeBodyAcc_mean_X
*TimeBodyAcc_mean_Y
*TimeBodyAcc_mean_Z
*TimeBodyAcc_std_X
*TimeBodyAcc_std_Y
*TimeBodyAcc_std_Z
*TimeGravityAcc_mean_X
*TimeGravityAcc_mean_Y
*TimeGravityAcc_mean_Z
*TimeGravityAcc_std_X
*TimeGravityAcc_std_Y
*TimeGravityAcc_std_Z
*TimeBodyAccJerk_mean_X
*TimeBodyAccJerk_mean_Y
*TimeBodyAccJerk_mean_Z
*TimeBodyAccJerk_std_X
*TimeBodyAccJerk_std_Y
*TimeBodyAccJerk_std_Z
*TimeBodyGyro_mean_X
*TimeBodyGyro_mean_Y
*TimeBodyGyro_mean_Z
*TimeBodyGyro_std_X
*TimeBodyGyro_std_Y
*TimeBodyGyro_std_Z
*TimeBodyGyroJerk_mean_X
*TimeBodyGyroJerk_mean_Y
*TimeBodyGyroJerk_mean_Z
*TimeBodyGyroJerk_std_X
*TimeBodyGyroJerk_std_Y
*TimeBodyGyroJerk_std_Z
*TimeBodyAccMag_mean
*TimeBodyAccMag_std
*TimeGravityAccMag_mean
*TimeGravityAccMag_std
*TimeBodyAccJerkMag_mean
*TimeBodyAccJerkMag_std
*TimeBodyGyroMag_mean
*TimeBodyGyroMag_std
*TimeBodyGyroJerkMag_mean
*TimeBodyGyroJerkMag_std
*FreqBodyAcc_mean_X
*FreqBodyAcc_mean_Y
*FreqBodyAcc_mean_Z
*FreqBodyAcc_std_X
*FreqBodyAcc_std_Y
*FreqBodyAcc_std_Z
*FreqBodyAcc_meanFreq_X
*FreqBodyAcc_meanFreq_Y
*FreqBodyAcc_meanFreq_Z
*FreqBodyAccJerk_mean_X
*FreqBodyAccJerk_mean_Y
*FreqBodyAccJerk_mean_Z
*FreqBodyAccJerk_std_X
*FreqBodyAccJerk_std_Y
*FreqBodyAccJerk_std_Z
*FreqBodyAccJerk_meanFreq_X
*FreqBodyAccJerk_meanFreq_Y
*FreqBodyAccJerk_meanFreq_Z
*FreqBodyGyro_mean_X
*FreqBodyGyro_mean_Y
*FreqBodyGyro_mean_Z
*FreqBodyGyro_std_X
*FreqBodyGyro_std_Y
*FreqBodyGyro_std_Z
*FreqBodyGyro_meanFreq_X
*FreqBodyGyro_meanFreq_Y
*FreqBodyGyro_meanFreq_Z
*FreqBodyAccMag_mean
*FreqBodyAccMag_std
*FreqBodyAccMag_meanFreq
*FreqBodyAccJerkMag_mean
*FreqBodyAccJerkMag_std
*FreqBodyAccJerkMag_meanFreq
*FreqBodyGyroMag_mean
*FreqBodyGyroMag_std
*FreqBodyGyroMag_meanFreq
*FreqBodyGyroJerkMag_mean
*FreqBodyGyroJerkMag_std
*FreqBodyGyroJerkMag_meanFreq

"activity_name" includes one of the six designated activities measured:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

"subject" identifies the code corresponding to each of the 30 subjects tested

The remaining variables are numeric values representing the summarized average of each measurement by subject and activity as reported by UCI. The original dataset included a total of 561 variables, however this analysis restricts only to those variables reporting either a mean or standard deviation metric, restricting the data to a total of 79 fields. Forty of these fields begin with the prefix "Time", indicating that they are time measurements. The other 39 fields contain the prefix "Freq" meaning that they capture frequency domain signals. The measures are further divided into acclerometer ("Acc) and gyroscope (Gyro) signals, as well as X/Y/Z indicating the axial positions. More information on the specifics of the calculations can be found on the UCI website.


