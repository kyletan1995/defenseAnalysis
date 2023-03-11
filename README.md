# defenseAnalysis
My final project for TMU's data analytics program. 

## Quick description:
I am an amateur data enthusiast. With this project, I aim to practice and apply what I've learned in my short time at TMU's Data Analytics program.

## Files

### Roadmap
A very general, and very brief graphic description on my broad plans for this project. 

### Report REVISED
The work in progress file of my written report. This will be updated as the project goes along.
This documents describes the project and all that goes in it. 
As of 2/18/2023 this includes - Abstract, Literature review, Methodologies. 
As of 3/1/2023 - previous report removed as it was not good enough. Uploaded new revised report.

Literature review, abstract, and methodology is included here. 

### EDA files
These are the EDA reports generated during the initial stages of the project. 
- Initial NA Analysis - EDA on the output variable. This was used to look at the various betting odds variables and see if there's missing values, outliers and any other items to note. 
- TeamAttr EDA - This is the report generated on the table in the database labelled 'team attributes'. This was used to determine the data types we're working with and any other standout items. 
- catData EDA - This is the report and analysis on all the team attributes that are categorical. Any correlations, outliers, missing values, and items to note will be detected here. 
- numData EDA - simlar to the catData report, this is the same but for the numerical data frame. 

### R Workspace
This shows my code and rough work for all analysis that was done on R during the "literature review + data description" phase of the project.

### REVISED ATTEMPT.ipynb
This is all the code and rough work for all analysis done during the "literature review + data description" phase of the project.

### database.sqlite
This is the raw database that this project is based on. Due to size limitation (~300 MBs) I cannot upload this.
This is downloaded from: https://www.kaggle.com/datasets/hugomathien/soccer
- numData - the dataframe exported from Python of all numerical inputs and output variable avgOdds.
- catData - the dataframe exported from Python that shows all cat inputs in their raw string form.
- catDataConverted - the dataframe that shows the converted ranks of each input categorical variable. 1 represents a more defensive style, 3 on the other end of the spectrum represents a more offensive style. 
