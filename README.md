#  Week 4 Getting and Cleaning Data Course Project

The script, run_analysis.R, will do the following:
* Load data from train and test folders
* Merge the data into one complete data
* Load name from feature.txt and assign to each column
* Reduce the data by removing columns that don't have mean or standard deviation value
* Load activity name from 'activitiy_labels.txt' and assign to activities in the data
* Tidy up the variable names in the data set
  *remove special characters such as parenthsis and dash
  *capitalize mean -> Mean, std -> Std
  *update BodyBody -> Body
* Create new data that contains only the average of both subject and activity

