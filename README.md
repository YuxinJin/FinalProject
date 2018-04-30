# Final Project for TRGN510 Course
Author: Yuxin Jin

Date: 04/12/18

*This repository is for my final project in TRGN510 course. In this file, I will simply introduce my project and describe the major steps to realize it.*

# Project: Gene Expression Analysis

## Description

I use the data of lung squamous cell carcinoma patients between 50 years old and 60 years old. The goal is to compare gene expression between them and find genes with p value less than 0.01. The Result will be shown in an interactive heatmap.

## Major Steps

### Step 1: Data Import

All data comes from [NIH GDC Data Portal](https://portal.gdc.cancer.gov/repository?facetTab=cases&filters=%7B%22op%22%3A%22and%22%2C%22content%22%3A%5B%7B%22op%22%3A%22%3E%3D%22%2C%22content%22%3A%7B%22field%22%3A%22cases.diagnoses.age_at_diagnosis%22%2C%22value%22%3A%5B18262%5D%7D%7D%2C%7B%22op%22%3A%22%3C%3D%22%2C%22content%22%3A%7B%22field%22%3A%22cases.diagnoses.age_at_diagnosis%22%2C%22value%22%3A%5B22279%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22cases.disease_type%22%2C%22value%22%3A%5B%22Lung%20Squamous%20Cell%20Carcinoma%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22cases.primary_site%22%2C%22value%22%3A%5B%22Lung%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.access%22%2C%22value%22%3A%5B%22open%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.analysis.workflow_type%22%2C%22value%22%3A%5B%22HTSeq%20-%20FPKM%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.data_format%22%2C%22value%22%3A%5B%22TXT%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.data_type%22%2C%22value%22%3A%5B%22Gene%20Expression%20Quantification%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.experimental_strategy%22%2C%22value%22%3A%5B%22RNA-Seq%22%5D%7D%7D%5D%7D). I pick these conditions: Files- Gene Expression Quantification, RNA_Seq, HTSeq-FPKM, TXT, open; Cases- Lung, Lung Squamous Cell Carcinoma, Years From 50 To 60.

There are 99 files in total. They are imported into two single dataframe. One contains female data and the other contains male data.

All femal raw txt data save in folder [FemaleData](https://github.com/YuxinJin/FinalProject/tree/master/FemaleData).

All male raw txt data save in folder [MaleData](https://github.com/YuxinJin/FinalProject/tree/master/MaleData).

I upload **TWO** Rmd files for data import.

1. [FemaleDataImport.Rmd](https://github.com/YuxinJin/FinalProject/blob/master/FemaleDataImport.Rmd)- *After running this file, you will get a single dataframe contains all female data.*

2. [MaleDataImport.Rmd](https://github.com/YuxinJin/FinalProject/blob/master/MaleDataImport.Rmd)- *After running this file, you will get a single dataframe contains all male data.*

I export these two dataframe into two csv file- [FemaleData.csv](https://github.com/YuxinJin/FinalProject/tree/master/FemaleData.csv) and [MaleData.csv](https://github.com/YuxinJin/FinalProject/tree/master/MaleData.csv).

###  Step 2: Data Analysis

I run a t test between female and male, then select genes with p < 0.01. I create an interactive heatmap to show the result.

Commands are stored in a rmd file named [DataAnalysis.Rmd](https://github.com/YuxinJin/FinalProject/blob/master/DataAnalysis.Rmd)- *After running this file, you will get a inteactive heatmap showing the expression level of all patients data with gene selected.*

All data involved are stored in [DataAnalysis.RData](https://github.com/YuxinJin/FinalProject/blob/master/DataAnalysis.RData).

### Step 3: Shiny Web App

I use the class server to build my shiny web app, the URL for my UI from Shiny is [http://52.14.202.125:3838/yuxinjin/FinalProject/](http://52.14.202.125:3838/yuxinjin/FinalProject/). 

**It may takes a few seconds to load the heatmap.**

I save the command in a script named [app.R](https://github.com/YuxinJin/FinalProject/blob/master/app.R), and save useful data in [ShinyData.RData](https://github.com/YuxinJin/FinalProject/blob/master/ShinyData.RData).

I also saved two image to show my result vitually. Please click the link below:

1. [Shiny Server Image.pdf](https://github.com/YuxinJin/FinalProject/blob/master/Shiny%20Server%20Image.pdf).

2. [Shiny Interactive Image.png](https://github.com/YuxinJin/FinalProject/blob/master/Shiny%20Interactive%20Image.png).





