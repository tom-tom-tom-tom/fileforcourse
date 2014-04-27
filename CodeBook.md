Information about Tidy.txt

	Columns names and meanings 

Column 0:
rownames

Columns 1 to 66: 
tBodyAcc-mean()-X	tBodyAcc-mean()-Y	tBodyAcc-mean()-Z	tBodyAcc-std()-X	tBodyAcc-std()-Y	tBodyAcc-std()-Z	tGravityAcc-mean()-X	tGravityAcc-mean()-Y	tGravityAcc-mean()-Z	tGravityAcc-std()-X	tGravityAcc-std()-Y	tGravityAcc-std()-Z	tBodyAccJerk-mean()-X	tBodyAccJerk-mean()-Y	tBodyAccJerk-mean()-Z	tBodyAccJerk-std()-X	tBodyAccJerk-std()-Y	tBodyAccJerk-std()-Z	tBodyGyro-mean()-X	tBodyGyro-mean()-Y	tBodyGyro-mean()-Z	tBodyGyro-std()-X	tBodyGyro-std()-Y	tBodyGyro-std()-Z	tBodyGyroJerk-mean()-X	tBodyGyroJerk-mean()-Y	tBodyGyroJerk-mean()-Z	tBodyGyroJerk-std()-X	tBodyGyroJerk-std()-Y	tBodyGyroJerk-std()-Z	tBodyAccMag-mean()	tBodyAccMag-std()	tGravityAccMag-mean()	tGravityAccMag-std()	tBodyAccJerkMag-mean()	tBodyAccJerkMag-std()	tBodyGyroMag-mean()	tBodyGyroMag-std()	tBodyGyroJerkMag-mean()	tBodyGyroJerkMag-std()	fBodyAcc-mean()-X	fBodyAcc-mean()-Y	fBodyAcc-mean()-Z	fBodyAcc-std()-X	fBodyAcc-std()-Y	fBodyAcc-std()-Z	fBodyAccJerk-mean()-X	fBodyAccJerk-mean()-Y	fBodyAccJerk-mean()-Z	fBodyAccJerk-std()-X	
fBodyAccJerk-std()-Y	fBodyAccJerk-std()-Z	fBodyGyro-mean()-X	fBodyGyro-mean()-Y	fBodyGyro-mean()-Z	fBodyGyro-std()-X	fBodyGyro-std()-Y	fBodyGyro-std()-Z	fBodyAccMag-mean()	fBodyAccMag-std()	fBodyBodyAccJerkMag-mean()	fBodyBodyAccJerkMag-std()	fBodyBodyGyroMag-mean()	fBodyBodyGyroMag-std()	fBodyBodyGyroJerkMag-mean()	fBodyBodyGyroJerkMag-std()

Columns 67 to 68:
Active and subject


Columns 1 to 66 was information that has been processed already from the raw sensor data. The t in front of the column names denotes a time domain signals field, whiles an f means that a Fast Fourier Transform was allpied to the field. 
For more information on see original Samsung description files features_info.txt. 

Column 67 is the activity which was being performed. 
Column 68 is the subject who was preforming the activity. 

	Column values

The values in the columns 1 to 66 are means of the original data across both testing and training files. 
The steps followed to produce these means are documented in the R file Run_analysis.R

As a brief overview, very few transformations were done to the data. There were no missing values that need to be replaced or fill. No new values were added. 
NAs were introduced as a result of the method to load the data in, however these are easily removed and do not affect the final result.

The values for columns 68 are taken from the information provided from files subject_train.txt and subject_test.txt

The values for columns 67 are taken from the information provided from files y_train.txt and y_test.txt, this information was then converted into a factor and the labels were set using the information from activity_labels.txt
