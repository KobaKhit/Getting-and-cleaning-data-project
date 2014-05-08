# Download and save data file as "data.zip"
if(!file.exists("data.zip")){
  print("Downloading data")
  url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(url,"data.zip", method="curl")
}


# Unzip file and read in train and test data sets
if(!file.exists("UCI HAR Dataset")){unzip("data.zip")}

train<-read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE)
test<-read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE)
df<-rbind(test,train) # merge train and test data sets
rm(train,test)

# Read in the variable(column) names for the data set and add them to the data set
varNames<-readLines("UCI HAR Dataset/features.txt")
names(df)<-varNames

# Read in activity indices and names and add them to the new column in the data set
trainActivity<-readLines("UCI HAR Dataset/train/y_train.txt")
testActivity<-readLines("UCI HAR Dataset/test/y_test.txt")
actNames<-readLines("UCI HAR Dataset/activity_labels.txt")

actNames<-substr(actNames,3,20) # remove numbers from names
Activity<-append(trainActivity,testActivity) 
Activity<-factor(Activity,labels=actNames) # add descriptive names  

df<-cbind(Activity,df)
rm(Activity,testActivity,trainActivity,actNames)

# Read in subject ids and add them to the new column in the data set
trainSub<-readLines("UCI HAR Dataset/train/subject_train.txt")
testSub<-readLines("UCI HAR Dataset/test/subject_test.txt")
`Subject ID`<-append(trainSub,testSub)

df<-cbind(`Subject ID`,df)
rm(`Subject ID`,trainSub,testSub)

# Extract measurements on the mean and std for each variable
r<-regexpr("[Mm][Ee][Aa][Nn]|[Ss][Tt][Dd]",varNames) # identify mean and std variables 
r<-attr(r,"match.length")>-1 # create logical with TRUE for mean and std variables
varNames[r] # character vector of mean and std variables

dfMeanStd<-cbind(df[,1:2],df[,varNames[r]]) # data set containing the mean and std variables only
dfMeanStd<-dfMeanStd[order(dfMeanStd[,1],dfMeanStd[,2]),] # order data by subject id and activity
rm(varNames,r)

# Create another data set with the average of each variable for each activity by subject
dfAvg<-aggregate(dfMeanStd[,3:length(dfMeanStd)], list(`Subject ID`=dfMeanStd[,1],Activity=dfMeanStd[,2]), FUN=mean)
dfAvg<-dfAvg[order(dfAvg[,1]),]

# Save the two data sets in the "result" folder
if(!file.exists("result")) {dir.create("result")}
print("Saving files")
write.csv(dfMeanStd,"result/dataset1.csv")
write.csv(dfAvg,"result/dataset2.csv")

file.remove("data.zip")
rm(df,dfAvg,dfMeanStd)
