library('MASS')
library('leaps')
numData <- read.csv('C:\\Users\\Gamer Kyle\\numData.csv')
catData <- read.csv('C:\\Users\\Gamer Kyle\\catData.csv')



#Outlier Removal + Detection
numData$zscore <- (abs(numData$avgOdds-mean(numData$avgOdds))/sd(numData$avgOdds))
numDataNoOutlier <- subset(numData, numData$zscore < 3)

catData$zscore <- (abs(catData$avgOdds-mean(catData$avgOdds))/sd(catData$avgOdds))
catDataNoOutlier <- subset(catData, catData$zscore < 3)


#Categorizing avgOdds
numDataNoOutlier <- within(numDataNoOutlier, {
  catOdds <- NA
  catOdds[avgOdds < 1.6823] <- "Almost Guaranteed Win"
  catOdds[avgOdds >= 1.683 & avgOdds <2.101] <- "Likely win"
  catOdds[avgOdds >= 2.101 & avgOdds <2.685] <- "Unlikely win"
  catOdds[avgOdds >=2.685] <- "Likley loss"
})

catDataNoOutlier <- within(catDataNoOutlier, {
  catOdds <- NA
  catOdds[avgOdds < 1.6823] <- "Almost Guaranteed Win"
  catOdds[avgOdds >= 1.683 & avgOdds <2.101] <- "Likely win"
  catOdds[avgOdds >= 2.101 & avgOdds <2.685] <- "Unlikely win"
  catOdds[avgOdds >=2.685] <- "Likley loss"
})

#Exporting CSV
write.csv(numDataNoOutlier,'C:\\Users\\Gamer Kyle\\numDataNew.csv')
write.csv(catDataNoOutlier,'C:\\Users\\Gamer Kyle\\catDataNew.csv')


#Backwards selection 
#Manually read in data frame using 'import dataset' as R would not recognize my CSV. 
df <- numDataNew
full <- lm(catOddsNUm ~ buildUpPlaySpeed + buildUpPlayPassing + chanceCreationPassing + chanceCreationCrossing + chanceCreationShooting + defencePressure + defenceAggression + defenceTeamWidth, data=df)
stepB <- stepAIC(full, direction= "backward", trace=TRUE)
summary(stepB)