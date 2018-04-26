# Final Project for TRGN510 Course
Author: Yuxin Jin

Date: 04/12/18

This repository is for my final project in TRGN510 course. In this file, I will simply introduce my project and describe the major steps to realize it.

# Project: Gene Expression Analysis
## Description
I plan to use the data of lung squamous cell carcinoma patients between 50 years old and 60 years old. And my goal is to compare expression of all genes between male and female patients.

## Major Steps
### Step 1: Data Importing
There are 99 files of data in total. I will import them into two single dataframe. One is the combination of female data and the other is the combination of male data.

I upload two rmd files for data importing.
1. [FemaleDataImport.Rmd](https://github.com/YuxinJin/FinalProject/blob/master/FemaleDataImport.Rmd)- After running this file, you will get a single dataframe with all female data inside.

2. [MaleDataImport.Rmd](https://github.com/YuxinJin/FinalProject/blob/master/MaleDataImport.Rmd)- After running this file, you will get a single dataframe with all male data inside.

###  Step 2: Data Analysis
For data analysis, I will merge all patient data into one single dataframe and create a heatmap that either columns/rows are people/gene expression.

I upload a rmd file named [DataAnalysis.Rmd](https://github.com/YuxinJin/FinalProject/blob/master/DataAnalysis.Rmd)- After running this file, you will get a heatmap showing the expression level of all patients data with gene selected.

For future shiny web app build, I stored all data that might be useful in a file named [DataAnalysed.RData](https://github.com/YuxinJin/FinalProject/blob/master/DataAnalysed.RData)- We can simply load the data to shiny web app for future step.

### Step 3: Shiny Web App
Upcoming
