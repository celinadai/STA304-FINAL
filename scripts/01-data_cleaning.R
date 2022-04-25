#### Preamble ####
# Purpose: Clean the survey data downloaded from [...UPDATE ME!!!!!]
# Author: Shengyi Dai
# Data: 5 April 2022
# Contact: celina.dai@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)
# Read in the raw data. 
getwd()
raw_data <- readr::read_csv("/home/jovyan/STA304-final/inputs/data/Robbery.csv")
# Just keep some variables that may be of interest (change 
# this depending on your interests)
clean_data <- raw_data%>%
  filter(reportedyear == "2021",
         reportedmonth == "December")%>%
  select(location_type, offence, occurrencehour,occurrenceday, occurrencedayofweek, Neighbourhood)
clean_data

write.csv(clean_data, "/home/jovyan/STA304-final/outputs/data/reduced_data.csv")

#### What's next? ####