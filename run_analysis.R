## This script transforms the source material for the course project into the average_dataset.txt data table.

## Read tables
Xtrain_tab <- read.table("UCI HAR dataset/train/X_train.txt")
ytrain_tab <- read.table("UCI HAR dataset/train/y_train.txt")
subtrain_tab <- read.table("UCI HAR dataset/train/subject_train.txt")
Xtest_tab <- read.table("UCI HAR dataset/test/X_test.txt")
ytest_tab <- read.table("UCI HAR dataset/test/y_test.txt")
subtest_tab <- read.table("UCI HAR dataset/test/subject_test.txt")

## Merge the training and test sets to create one data set
X <- rbind(Xtrain_tab, Xtest_tab)
y <- rbind(ytrain_tab, ytest_tab)
subject <- rbind(subtrain_tab, subtest_tab)

## Extract mean and standard deviation for each measurement
features <- read.table("UCI HAR dataset/features.txt")
mean_std_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, mean_std_features]

## Use descriptive activity names to name the activities in the data set
names(y) <- "activity"
activity_labels <- read.table("UCI HAR dataset/activity_labels.txt")
activity_labels[, 2] <- tolower(activity_labels[, 2])
activity_labels[, 2] <- gsub("_u", "U", activity_labels[, 2])
activity_labels[, 2] <- gsub("_d", "D", activity_labels[, 2])
y[,1] <- activity_labels[y[,1], 2]

## Appropriately label the data set with descriptive variable names
names(subject) <- "subject"
names(X) <- features[mean_std_features, 2]
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- gsub("BodyBody", "Body", names(X))
names(X) <- gsub("tBody", "timeBody", names(X))
names(X) <- gsub("tGravity", "timeGravity", names(X))
names(X) <- gsub("fBody", "frequencyBody", names(X))
names(X) <- gsub("Acc", "Acceleration", names(X))
names(X) <- gsub("-mean|-mean-", "Mean", names(X))
names(X) <- gsub("-std|-std-", "Std", names(X))

## Assemble tidy data set
tidy_dataset <- cbind(subject, y, X)

## Create an independent data set with the average of each variable for each activity and each subject
act_factor <- factor(y[,1])
y[,1] <- unclass(act_factor)
ref_dataset <- cbind(subject, y, X)
split_tab <- split(ref_dataset, list(ref_dataset$activity, ref_dataset$subject))
avg_mat <- sapply(split_tab, function(x) colMeans(x, na.rm = TRUE))
second_tab <- data.frame(t(avg_mat))
names(second_tab) <- names(ref_dataset)
second_tab[,2] <- factor(as.integer(second_tab[,2]),labels=levels(act_factor))
write.table(second_tab, "average_dataset.txt", row.name=FALSE)