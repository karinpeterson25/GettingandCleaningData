

## The following code can be used to read-in, clean, and summarize the UCI Smartphone Data
## The final output produces the average of numeric time and frequency variables from this dataset


## 1: Download and Read-in Data
###########################################


url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(url, "data.zip")

unzip(zipfile="data.zip", exdir="./data")

features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("id", "name"))

train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")

train_sub <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
    
train_act <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
    
test <- read.table ("./data/UCI HAR Dataset/test/X_test.txt")
    
test_sub <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

test_act <- read.table("./data/UCI HAR Dataset/test/y_test.txt")

activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("id", "activity_name"))


    
## 2: Clean field names to remove unwanted characters and duplicates
###########################################
    
library(dplyr)

features$name <-gsub(",|-","_", gsub("[()]","", features$name))

fields <- tbl_df(features)

groupfields <- group_by (fields, name)

newfields <-
groupfields %>%
    mutate(count=n(), seq=seq_along(name)) %>%
    mutate(new= gsub(" ","",ifelse(count>1,paste(name,"_",seq), name)))

names(train) <- newfields$new

names(test) <- newfields$new


## 3: Add "Activity" and "Subject" columns & Combine Train and Test datasets
###########################################

## Train
train$activityid <- train_act$V1

train$subject <- train_sub$V1

train$dataset <- "train"


## Test
test$activityid <- test_act$V1

test$subject <- test_sub$V1

test$dataset <- "test"


## Combine
combined <- rbind(train,test)

    table(combined$dataset)


## 4: Extract relevant columns from combined data and add Activity labels
##################################################

selection <- grep("std|mean",newfields$new)

datasel <- select(combined, dataset, activityid, subject, selection)

data <- merge(activity_labels, datasel,  by.x = "id", by.y = "activityid", all=TRUE)



## 5. Apply further cleaning and description to field names
###################################################

datafields <- names(data)

datafields <- gsub("^t", "Time", datafields)

datafields <- gsub("^f", "Freq", datafields)

datafields <- gsub("BodyBody", "Body", datafields)

datafields[1:2] <- c("activity_id", "activity_name")

names(data) <- datafields


## 6. Create a second dataset with the average of each variable for each activity and subject
####################################################

data2 <- select (data, activity_name, subject:FreqBodyGyroJerkMag_meanFreq) %>%
    group_by(activity_name, subject) %>%
    summarize_each(funs(mean))

write.table(data2, "tidy_data.txt", row.name=FALSE)

write.csv(data2, "tidy_data.csv")



