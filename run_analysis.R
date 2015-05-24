##load libraries needed by the script
library (plyr);library(dplyr)

##read data from test folder, give label to subjects and activity columns and bind the objects 
##to create the test data set
test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="")
test_label <- read.table("./UCI HAR Dataset/test/Y_test.txt", header=FALSE, sep="")
names(test_label) <- "activity"
test_sub <- read.table ("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="")
names(test_sub) <- "subjects"
test_data <- cbind(test_sub, test_label, test)
rm(test, test_label, test_sub)

##read data from training folder, give label to subjects and activity columns and bind the 
##objects to create the training data set
train <- read.table ("./UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="")
train_label <- read.table("./UCI HAR Dataset/train/Y_train.txt", head=FALSE, sep="")
names(train_label) <- "activity"
train_sub <- read.table("./UCI HAR Dataset/train/subject_train.txt", head=FALSE, sep="")
names(train_sub) <- "subjects"
train_data <- cbind(train_sub, train_label, train)
rm(train, train_label, train_sub)

##bind the training and test data sets to create the main data set
dat <- rbind(test_data, train_data)
rm(test_data, train_data)

##read the features file, extract means and std deviations, combine these
##into the features object, arrange the data in the object by number
feat <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
means <- subset(feat, grepl("-mean()", feat$V2, fixed=TRUE))
std_dev <- subset(feat, grepl("-std()", feat$V2, fixed=TRUE))
features <- rbind(means, std_dev)
features <- arrange(features, V1)

##split the main dataset into an object containing activities and subjects and
##an object containing the data measurements. Extract the means and std deviations
## from the data. Recombine the subjects, activities, means and standard deviations
sub_act <- select(dat, subjects, activity)
data_only <- select(dat, V1:V561 )
mean_std <- select (data_only, features$V1)
names(mean_std) <- features$V2
final <- cbind(sub_act, mean_std)
rm(dat, data_only, feat, features, means, mean_std, std_dev, sub_act)

##add activity labels
final$activity <- as.factor(final$activity)
final$activity <- mapvalues(final$activity, c(1:6), c("walking", "walkingupstairs",
                                                      "walkingdownstairs",
                                                      "sitting", "standing", "laying"))
##change variable names to lower case
##grouping by subjects and activity and calculating summary means
names (final) <-tolower(names(final))
final <- arrange (final, subjects, activity) 
final <- group_by(final, subjects, activity) 
final <- summarise_each(final, funs(mean))

write.table (final, file="./gandcd_project.txt", row.name=FALSE, col.names=TRUE)

