# defenseAnalysis
My final project for TMU's data analytics program. 

## Quick description:
I am an amateur data enthusiast. With this project, I aim to practice and apply what I've learned in my short time at TMU's Data Analytics program.

This projects aims to answer one simple question: "Does defense win titles?". 
This exploration will be done with respect to international cup football(aka soccer as I am typing this in Canada). 
I aim to use the publicly available Women's World Cup 2019 data provided by FBREF (https://fbref.com/en/comps/106/2019/2019-Womens-World-Cup-Stats) to look at the performances of the champions and other successful teams. With their performance, I aim to detect any patterns, correlations, or any sort of tell between defensive stats and their overall performance. 

The challenge with my project will be to create a robust defense measure in order to compare, contrast, and analyze the teams. 

## Influences:
I have gained inspiration and ideas from the following projects: 
1. https://medium.com/datadream/predicting-epl-wins-a0d0cc5bcb18
2. https://statsbomb.com/articles/soccer/how-to-measure-defense/
3. https://github.com/indrag49/football-analysis-project/blob/main/xG%20analysis.ipynb
4. https://github.com/indrag49/football-analysis-project/blob/main/Linear%20Regression%20model%20on%20football%20data.ipynb

## Files

### Roadmap
A very general, and very brief graphic description on my broad plans for this project. 

### Country Defensive Stats
This file reports of the EDA of the dataset I will using to do this project. 
It's a combined and rennamed dataframe that holds all defensive actions for and against each of the participating sample nations. 

### Country Defensive Stats Relative
This file shows the relative measures of each stats. This is done by dividing the stats for by the stats against for each country. 
The measures show a relative percentage of how much better the repsective country has done compared to their oppositions. 
e.g. 1.5 means this country did 50% better than their oppositions. 

### Country Defensive Stats with Average
The average of the the countries are added in here for easy comparison. Average was exluded on other ones as it skewed the overall analysis of individual 
country stats. 

### Data Project Attempt 4.ipynb
This file shows all the rough work done in Jupyter Notebook using Python. Most of the graphics visualizations and initial data analysis is done here. 

### R Workspace.R
This file shows all rough work done in R. Most of the more in-depth statistical analysis such the regression analysis is done here. 
