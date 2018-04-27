# Final Project for TRGN510 Course
Author: Yuxin Jin

Date: 04/12/18

**This repository is for my final project in TRGN510 course. In this file, I will simply introduce my project and describe the major steps to realize it.**

# Project: Gene Expression Analysis

## Description

I use the data of lung squamous cell carcinoma patients between 50 years old and 60 years old. The goal is to compare gene expression between them and find genes with p value less than 0.01. The Result will be shown in an interactive heatmap.

## Major Steps

### Step 1: Data Import

All data comes from [NIH GDC Data Portal](https://portal.gdc.cancer.gov/repository?facetTab=cases&filters=%7B%22op%22%3A%22and%22%2C%22content%22%3A%5B%7B%22op%22%3A%22%3E%3D%22%2C%22content%22%3A%7B%22field%22%3A%22cases.diagnoses.age_at_diagnosis%22%2C%22value%22%3A%5B18262%5D%7D%7D%2C%7B%22op%22%3A%22%3C%3D%22%2C%22content%22%3A%7B%22field%22%3A%22cases.diagnoses.age_at_diagnosis%22%2C%22value%22%3A%5B22279%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22cases.disease_type%22%2C%22value%22%3A%5B%22Lung%20Squamous%20Cell%20Carcinoma%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22cases.primary_site%22%2C%22value%22%3A%5B%22Lung%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.access%22%2C%22value%22%3A%5B%22open%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.analysis.workflow_type%22%2C%22value%22%3A%5B%22HTSeq%20-%20FPKM%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.data_format%22%2C%22value%22%3A%5B%22TXT%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.data_type%22%2C%22value%22%3A%5B%22Gene%20Expression%20Quantification%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.experimental_strategy%22%2C%22value%22%3A%5B%22RNA-Seq%22%5D%7D%7D%5D%7D)

There are 99 files in total. They are imported into two single dataframe. One contains female data and the other contains male data.

I upload **TWO** Rmd files for data import.

1. [FemaleDataImport.Rmd](https://github.com/YuxinJin/FinalProject/blob/master/FemaleDataImport.Rmd)- *After running this file, you will get a single dataframe contains all female data.*

2. [MaleDataImport.Rmd](https://github.com/YuxinJin/FinalProject/blob/master/MaleDataImport.Rmd)- *After running this file, you will get a single dataframe contains all male data.*

###  Step 2: Data Analysis

To analyse the data, I run a t test and select genes with p < 0.01. Then create an interactive heatmap to show the result.

I upload a rmd file named [DataAnalysis.Rmd](https://github.com/YuxinJin/FinalProject/blob/master/DataAnalysis.Rmd)- *After running this file, you will get a heatmap showing the expression level of all patients data with gene selected.*

All data involved are stored in [DataAnalysis.RData](https://github.com/YuxinJin/FinalProject/DataAnalysis.RData)

### Step 3: Shiny Web App



