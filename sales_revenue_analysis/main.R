rm(list = ls())
library("gt")
library("readxl")
library("writexl")
library("lubridate")
library("tidyverse")

data = read_xlsx("../data/comp646_sa.xlsx")
str(data)