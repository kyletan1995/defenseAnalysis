datuma <- read.csv('C:\\Users\\Gamer Kyle\\Desktop\\datasets\\FBREF\\DEFnoAvg.csv')

#Removing the non numerical 'player' name column.
datuma <- datuma[,-1]

#Storing the zscores onto a variable
zscoreDatuma <- scale(datuma)
zscoreDatuma

#Re-uploading a version of the datafrme with 'player' name reference for easy referencing. 
datuma <- read.csv('C:\\Users\\Gamer Kyle\\Desktop\\datasets\\FBREF\\DEFnoAvg.csv')
datuma
