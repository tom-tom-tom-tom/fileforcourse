library('data.table')
library(plyr)
#old_wd <- getwd()
#setwd("C:\\Users\\thomas\\Documents\\Coursera\\Getting and Cleaning Data")
train_x_all <-scan(paste(getwd(),"/UCI HAR Dataset/train/X_train.txt",sep=""),sep=" ",fill=F,nlines=7352,allowEscapes=T)
test_x_all <-scan(paste(getwd(),"\\UCI HAR Dataset\\test\\X_test.txt",sep=""),sep=" ",fill=F,nlines=2947,allowEscapes=T)

train_x <- train_x_all[!is.na(train_x_all)]
test_x <- test_x_all[!is.na(test_x_all)]
rm(train_x_all)
rm(test_x_all)

m_tr_x <- matrix(train_x,ncol=561,byrow=T)
m_te_x <- matrix(test_x,ncol=561,byrow=T)
rm(train_x)
rm(test_x)

big_d <- rbind(m_tr_x,m_te_x)
rm(m_tr_x)
rm(m_te_x)

fea <- read.csv(paste(getwd(),"\\UCI HAR Dataset\\features.txt",sep=""),sep=" ",header=F)
mean_cols <- fea$V1[grep("mean()",fea$V2,value=F,fixed=T)]
std_cols <- fea$V1[grep("std()",fea$V2,value=F,fixed=T)]
subset <- sort(c(mean_cols,std_cols))
subset.name <- fea$V2[subset]

subset_df <- big_d[,subset]
colnames(subset_df) <- subset.name
subset_df <- as.data.frame(subset_df)

train_y_all <-scan(paste(getwd(),"/UCI HAR Dataset/train/Y_train.txt",sep=""),sep=" ",fill=F,nlines=7352,allowEscapes=T)
test_y_all <-scan(paste(getwd(),"\\UCI HAR Dataset\\test\\Y_test.txt",sep=""),sep=" ",fill=F,nlines=2947,allowEscapes=T)
subject_train <-scan(paste(getwd(),"/UCI HAR Dataset/train/subject_train.txt",sep=""),sep=" ",fill=F,nlines=7352,allowEscapes=T)
subject_test <-scan(paste(getwd(),"\\UCI HAR Dataset\\test\\subject_test.txt",sep=""),sep=" ",fill=F,nlines=2947,allowEscapes=T)

all_sub <- c(subject_train,subject_test)
all_y <- c(train_y_all,test_y_all)

f <- factor(all_y,labels=c("walking","walking upstairs","walking downstairs","sitting","standing","laying"))
subset_df$label <- f
subset_df$subject <- all_sub

step1 <- split(subset_df[,1:67],subset_df$subject)
step2 <- lapply(step1, function(x){ step11 <- split(x[1:66],x$label); step12 <- lapply(step11,colMeans)})
step3 <- t(as.data.frame(step2))

nn <- as.data.frame(step3)
names <- rownames(nn)
ns <- unlist(strsplit(names,".[0-9]\\.",perl=T))
ns <- ns[!ns=="" &  ! ns== "X"]
nn$active <- ns
nn$subject <- sort(rep.int(1:30,times=6))

write.table(nn,"tidy.txt")
#setwd(old_wd)
