library('MASS')
library('leaps')
numData <- read.csv('C:\\Users\\Gamer Kyle\\numData.csv')
catData <- read.csv('C:\\Users\\Gamer Kyle\\catData.csv')

#num Data
rn_Train <- sample(nrow(numData),floor(nrow(numData)*0.7))
train <- numData[rn_Train,]
test <- numData[-rn_Train,]

full1 <- lm(avgOdds ~ buildUpPlaySpeed + buildUpPlayPassing + chanceCreationPassing + chanceCreationCrossing + chanceCreationShooting + defencePressure + defenceAggression + defenceTeamWidth,data = numData)
stepB <- stepAIC(full, direction= "backward", trace=TRUE)
summary(stepB)


#cat Data
full <- lm(avgOdds ~ buildUpPlayPassingClass + buildUpPlayPositioningClass + chanceCreationPassingClass	+ chanceCreationCrossingClass + chanceCreationShootingClass + chanceCreationPositioningClass + defencePressureClass +  defenceAggressionClass + defenceTeamWidthClass +defenceDefenderLineClass,data = catData)
stepB <- stepAIC(full, direction= "backward", trace=TRUE)
summary(stepB)



#ANOVA
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(broom)
library(AICcmodavg)

summary(catData)

twoWay <- aov(avgOdds ~ buildUpPlayPassingClass + buildUpPlayPositioningClass + chanceCreationPassingClass	+ chanceCreationCrossingClass + chanceCreationShootingClass + chanceCreationPositioningClass + defencePressureClass +  defenceAggressionClass + defenceTeamWidthClass +defenceDefenderLineClass,data = catData)
summary(twoWay)

aictab(twoWay)


#Linearity Testing
par(mfrow=c(2,4))
plot(numData$buildUpPlaySpeed,numData$avgOdds)
plot(numData$buildUpPlayPassing,numData$avgOdds)
plot(numData$chanceCreationPassing,numData$avgOdds)
plot(numData$chanceCreationCrossing,numData$avgOdds)
plot(numData$chanceCreationShooting,numData$avgOdds)
plot(numData$defencePressure,numData$avgOdds)
plot(numData$defenceAggression,numData$avgOdds)
plot(numData$defenceTeamWidth,numData$avgOdds)

 # init 4 charts in 1 panel

