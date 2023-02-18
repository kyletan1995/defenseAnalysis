data <- read.csv('C:\\Users\\Gamer Kyle\\Desktop\\datasets\\FBREF\\DEFRelative.csv')
library(tidyverse)
library(ggpubr)
library(MASS)
library(leaps)
theme_set(theme_pubr())

#Linear Regression
cor(data$xG,data$DefActTot)

ggplot(data, aes(x=xG, y=Def.3rd,Blocks)) + geom_point() + stat_smooth()

simpleModel <- lm(data$xG ~ data$DefActTot)
summary(simpleModel)


#Multiple Regression
cor(data$xG, data$Def.3rd)
cor(data$xG, data$Mid.3rd)
cor(data$xG, data$Att.3rd)
cor(data$xG, data$Tkl.)
cor(data$xG, data$Blocks)
cor(data$xG, data$Int)
cor(data$xG, data$Clr)

ggplot(data, aes(x=xG)) + geom_line(aes(y = Def.3rd), color = "black") +
  geom_line(aes(y = Mid.3rd), color = "red") +
  geom_line(aes(y = Att.3rd), color = "green") +
  geom_line(aes(y = Tkl.), color = "blue") +
  geom_line(aes(y = Blocks), color = "purple") + 
  geom_line(aes(y = Int), color = "orange") +
  geom_line(aes(y = Blocks), color = "yellow") 
  
multiModel <- lm(data$xG ~ data$Def.3rd + data$Mid.3rd + data$Att.3rd + data$Tkl. + data$Blocks + data$Int +data$Clr)
summary(multiModel)


#Forward Selection using just def total actions indicators
full <-multiModel
null <- lm(xG~1,data=data)
stepF <- stepAIC(null,scope=list(lower=null, upper=full),direction = 'forward', trace=TRUE)
summary(stepF)





#Forward selection using all relevant variables
full <- lm(data$xG ~ data$Tkl + data$TklW + data$Def.3rd + data$Mid.3rd + data$Att.3rd + data$Tkl.1 + data$Att + data$Tkl. + data$Lost + data$Blocks + data$Sh + data$Pass + data$Int 
           + data$Clr + data$DefPen + data$Def3rdT + data$Mid3rdT + data$Att3rdT + data$AttPen + data$DeadBall + data$AerialDuel +data$Goals)
null <- lm(xG~1,data=data)
stepF <- stepAIC(null,scope=list(lower=null, upper=full),direction = 'forward', trace=TRUE)
summary(stepF)

