# CodeBook
This codebook describes the variables, the data (tidy.txt), and any transformations or work that was performed to clean up the data.

## Data
The data is saved in tidy.txt. It contains the average(mean) of each measurement for each subject and activity.

## Transformation
* Variable names: special characters such as ()- were removed for better aesthetic, mean and std were capitalized for variable name format consistency, a typo 'BodyBody' was found and corrected to 'Body'.
* activity: the activity column contained only integer, but it was updated to descriptive activity names for easy comprehension. 

## Variable
* `subject`: the id of the test subject
* `activity`: the type of activity when measurement was taken
* Measurement variables:
`tBodyAccMeanZ` 	     `tBodyAccStdX`		      `tBodyAccStdY`         `tBodyAccStdZ`         
`tGravityAccMeanX`     `tGravityAccMeanY`     `tGravityAccMeanZ`     `tGravityAccStdX`    
`tGravityAccStdY`      `tGravityAccStdZ`      `tBodyAccJerkMeanX`    `tBodyAccJerkMeanY`   
`tBodyAccJerkMeanZ`    `tBodyAccJerkStdX`     `tBodyAccJerkStdY`     `tBodyAccJerkStdZ`    
`tBodyGyroMeanX`       `tBodyGyroMeanY`       `tBodyGyroMeanZ`       `tBodyGyroStdX`       
`tBodyGyroStdY`        `tBodyGyroStdZ`        `tBodyGyroJerkMeanX`   `tBodyGyroJerkMeanY`  
`tBodyGyroJerkMeanZ`   `tBodyGyroJerkStdX`    `tBodyGyroJerkStdY`    `tBodyGyroJerkStdZ`   
`tBodyAccMagMean`      `tBodyAccMagStd`       `tGravityAccMagMean`   `tGravityAccMagStd`   
`tBodyAccJerkMagMean`  `tBodyAccJerkMagStd`   `tBodyGyroMagMean`     `tBodyGyroMagStd`     
`tBodyGyroJerkMagMean` `tBodyGyroJerkMagStd`  `fBodyAccMeanX`        `fBodyAccMeanY`       
`fBodyAccMeanZ`        `fBodyAccStdX`         `fBodyAccStdY`         `fBodyAccStdZ`        
`fBodyAccJerkMeanX`    `fBodyAccJerkMeanY`    `fBodyAccJerkMeanZ`    `fBodyAccJerkStdX`    
`fBodyAccJerkStdY`     `fBodyAccJerkStdZ`     `fBodyGyroMeanX`       `fBodyGyroMeanY`      
`fBodyGyroMeanZ`       `fBodyGyroStdX`        `fBodyGyroStdY`        `fBodyGyroStdZ`       
`fBodyAccMagMean`      `fBodyAccMagStd`       `fBodyAccJerkMagMean`  `fBodyAccJerkMagStd`  
`fBodyGyroMagMean`     `fBodyGyroMagStd`      `fBodyGyroJerkMagMean` `fBodyGyroJerkMagStd`
