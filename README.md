
## Getting and Cleaning Data Course Project
==========================================
The goal of this code is to clean and summarize data from the Human Activity Recognition Using Smartphones Dataset published on the UCI Machine Learning Repository. This dataset reports sensor signals from 30 subjects wearing Samsung Galaxy S II smartphones

The data is published in two main sets: training data and test data, contained in X_train.txt and X_test.txt respectively. For each set, there is a corresponding file containing the activity codes pertaining to each metric (y_train.txt and y_test.txt). Each set contains the same 561 calculations, or "features". These features are listed in features.txt. The identifiers for each of the 30 subjects are contained in separate files titled subject_train.txt and subject_test.txt. Finally, activity_labels.txt contains a crosswalk identifying the six activity types: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.


### Section #1: Download and Read-in Data

The first step of the code downloads and reads the following relevant data files.

X_train.txt 
X_test.txt
y_train.txt
y_test.txt
features.txt
subject_train.txt
subject_test.txt
activity_labels.txt

### Section #2: Clean field names to remove unwanted characters and duplicates

As described above, the field names for this data are listed in the file features.txt. A number of fields in this list include unwanted characters such as dashes and parantheses. In addition, there are several instances where duplicate field names appear. This section parses out unwanted characters and adds an id where appropriate to ensure that all field names are unique. Subsequently, the names are added as column names to both the train and test sets.

### Section #3: Add "Activity" and "Subject" columns & combine Train and Test datasets

This section merges the subject and activity ids onto each set. In addition, a "dataset" variable is added to identify whether the data comes from the train or test set. Then, the train and test tables are combined to form one data frame using rbind.

### Section #4: Extract relevant columns from combined data and add "Activity" labels

This section isolates the standard deviation and mean metrics from available features. A new dataset is created with only these variables. In addition, the activity labels are merged with the new dataset to create a field with the name of each activity type

### Section #5: Apply further cleaning and description to field names

Originally, each column began with either "t" or "f" to identify whether the measure was a time or frequency variable. This code updates the variables to be more descriptive, adding the prefix "time" or "freq" instead.

### Section #6: Create a second dataset with the average of each variable for each activity and subject

This code calculates the mean of each metric by subject and activity. The result is a dataset of 180 data points for each combination across 30 subjects and and 6 activities.
