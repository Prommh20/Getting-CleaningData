library(plyr)


# 1 Reading training datasets

        train_x <- read.table("./uci/train/X_train.txt")
        train_y <- read.table("./uci/train/y_train.txt")
        train_sub <- read.table("./uci/train/subject_train.txt")

# 2 Reading test datasets

        test_x <- read.table("./uci/test/X_test.txt")
        test_y <- read.table("./uci/test/y_test.txt")
        test_sub <- read.table("./uci/test/subject_test.txt")

# 3 Reading feature vector

        feature <- read.table("./uci/features.txt")

# 4 Reading activity labels

        activityLabels = read.table("./uci/activity_labels.txt")

# 5 Assigning variable names

        colnames(train_x) <- feature[,2]
        colnames(train_y) <- "activityID"
        colnames(train_sub) <- "subjectID"

        colnames(test_x) <- feature[,2]
        colnames(test_y) <- "activityID"
        colnames(test_sub) <- "subjectID"

        colnames(activityLabels) <- c("activityID","activityType")

# 6 merging all the datasets into a single set

        train <- cbind(train_y,train_sub,train_x)
        test <- cbind(test_y,test_sub,test_x)
        dataset <- rbind(train,test)

# 7 extracting specific values like mean and sd

        colName <- colnames(dataset)

        mean_sd <- (grepl("activityID", colName) | grepl("subjectID",colName) | grepl("mean..", colName) | grepl("std..",colName))

# 8 creating subset

        setofMean_Sd <- dataset[, mean_sd == TRUE]


# 9 Creating a tidy dataset

        tidyData <- aggregate(. ~subjectID + activityID,setofMean_Sd ,mean)
        tidyData <- tidyData[order(tidyData$subjectID,tidyData$activityID),]

# 9.1 writing data into a txt file

        write.table(tidyData,"tidyData.txt",row.name = FALSE)
