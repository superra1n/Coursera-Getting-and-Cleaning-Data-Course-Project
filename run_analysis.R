library(reshape2)

#load train and test data
trainSetX <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainSetY <- read.table("./UCI HAR Dataset/train/Y_train.txt")
trainSetSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

testSetX <- read.table("./UCI HAR Dataset/test/X_test.txt")
testSetY <- read.table("./UCI HAR Dataset/test/Y_test.txt")
testSetSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#bind the train data and the test data into one
trainData <- cbind(trainSetSubject, trainSetY, trainSetX)
testData <- cbind(testSetSubject, testSetY, testSetX)
mergeData <- rbind(trainData, testData)

#load and assign default column name to the merged data
cName <- read.table("./UCI HAR Dataset/features.txt")
cName <- c("subject", "activity", as.character(cName$V2))
names(mergeData) <- cName

#extracts only the measurements on the mean and standard deviation 
#for each measurement by filtering through column names that has mean or std
#and not subject and activity
mergeData <- mergeData[,grep("subject|activity|.(mean\\(|std)",colnames(mergeData))]

#uses descriptive activity names to name the activities in the data set
activityName <- read.table("./UCI HAR Dataset/activity_labels.txt")
mergeData$activity <- factor(mergeData$activity, 
                             levels = activityName[,1], 
                             labels = as.character(activityName[,2]))

#appropriately labels the data set with descriptive variable names
tidyName <- names(mergeData)
tidyName <- gsub("-", "", tidyName)
tidyName <- gsub("\\(\\)", "", tidyName)
tidyName <- gsub("mean", "Mean", tidyName)
tidyName <- gsub("std", "Std", tidyName)
tidyName <- gsub("BodyBody", "Body", tidyName)
names(mergeData) <- tidyName

#creates a second, independent tidy data set with the average of each variable for 
#each activity and each subject by reshape the data and cast to new data frame
meltData <- melt(mergeData, id = c("subject", "activity"))
tidyData <- dcast(meltData, subject + activity ~ variable, mean)
write.table(tidyData, file = "tidy.txt", quote = FALSE, row.names = FALSE)

