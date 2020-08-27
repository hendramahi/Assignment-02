#Find the month with the highest total employment across the states

stats <- read.csv(file.choose())
stats
head(stats)
stats$SmJob <- stats[,2]+stats[,3]+stats[,4]+stats[,5]+stats[,6]+stats[,7]
stats
which.max(stats$SmJob)
stats[24,"month"]

#Find the months in which employment figures in Atlantic went below 950.
MnthData <- stats[stats$Atlantic<950,"month"] 
MnthData

#Sort the figures for Quebec in ascending order
AscOrdr = stats[order(+stats$Quebec),] 
AscOrdr
head(stats)

#Create an Alberta and BC data frame and combine it with the jobs dataset
stats[,"BC"]
stats$Alberta
DfBcAlb <- data.frame(BC=stats$BC, Alberta=stats$Alberta)
DfBcAlb
#merge
head(DfBcAlb)
head(stats)
MergedDf <- merge(stats,DfBcAlb, by.x="BC", by.y = "BC")
MergedDf
MergedDf$Alberta.y <- NULL
MergedDf

