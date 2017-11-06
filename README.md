#  Week 4 Getting and Cleaning Data Course Project

The script, run_analysis.R, will do the following:
* Read data files from both train and test folders
* Merge the data into one complete data
* Read name from `feature.txt` and assign to each column
* Reduce the data by removing columns that don't have mean or standard deviation value
* Read activity name from `activitiy_labels.txt` and assign to activities column in the data
* Tidy up the column names in the data set: Remove special characters such as parenthsis and dash, capitalize mean -> Mean and std -> Std, change BodyBody -> Body
* Create new data that contains only the average of both subject and activity, then save in `tidy.txt`
