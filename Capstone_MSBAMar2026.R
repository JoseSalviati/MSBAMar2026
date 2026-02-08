# Capstone project: MSBA March 2026
# Author: Jose Salviati, Dora Nakafuji, Benjamin Lind
# Date: Feb 2026

data_dict <- data.frame(
Column = names(df),
Type = sapply(df, class),
N_Missing = sapply(df, function(x) sum(is.na(x))),
Description = rep("", ncol(df)) # Fill manually
)
data_dict <- data.frame(
Column = names(bank.additional.full),
Type = sapply(bank.additional.full, class),
N_Missing = sapply(bank.additional.full, function(x) sum(is.na(x))),
Description = rep("", ncol(bank.additional.full)) # Fill in manually
)
library(readr)
bank_additional_full <- read_csv("C:/Users/jose.salviati/Desktop/Jose/Masters2/Analytics Methods and Frameworks Project/bank+marketing/bank-additional/bank-additional/bank-additional-full.csv")
View(bank_additional_full)
library(readr)
bank_full <- read_csv("C:/Users/jose.salviati/Desktop/Jose/Masters2/Analytics Methods and Frameworks Project/bank+marketing/bank/bank-full.csv")
View(bank_full)
data_dict <- data.frame(
Column = names(bank.additional.full),
Type = sapply(bank.additional.full, class),
N_Missing = sapply(bank.additional.full, function(x) sum(is.na(x))),
Description = rep("", ncol(bank.additional.full)) # Fill in manually
)
data_dict <- data.frame(
Column = names(bank_additional_full),
Type = sapply(bank_additional_full, class),
N_Missing = sapply(bank_additional_full, function(x) sum(is.na(x))),
Description = rep("", ncol(bank_additional_full)) # Fill in manually
)
print(data_dict)
data_dict <- data.frame(
`P/F` = rep("", ncol(bank_additional_full)),                # Fill manually: Primary/Foreign Key
`Field Name` = names(bank_additional_full),
`Caption` = rep("", ncol(bank_additional_full)),            # Add short descriptions for each field
`Data Type` = sapply(bank_additional_full, class),
`Field Size` = sapply(bank_additional_full, function(x) {
if (is.character(x)) max(nchar(x), na.rm=TRUE) else NA
}),
`Notes` = rep("", ncol(bank_additional_full))               # Add notes as needed
)
print(data_dict)
summary(bank_additional_full)
data.frame(
Field = names(bank_additional_full),
DataType = sapply(bank_additional_full, class)
)
field_size <- function(x) {
if (is.character(x)) {
max(nchar(x), na.rm = TRUE)
} else if (is.factor(x)) {
max(nchar(as.character(x)), na.rm = TRUE)
} else {
NA
}
}
sizes <- sapply(bank_additional_full, field_size)
data.frame(
Field = names(bank_additional_full),
Field_Size = sizes
)
View(field_size)
library(tidyverse)
library(lubridate)
<- read.csv("data/archive")
<- read.csv("data/archive/2018-2019_Daily_Attendance_20240429.csv")
<- read.csv("data/archive/2018-2019_Daily_Attendance_20240429")
daily_attendance <- read_csv(
"data/archive/2018-2019_Daily_Attendance_20240429.csv"
)
getwd()
setwd("~/R Scripts Files")
getwd()
setwd("~/R Scripts Files/School Tracker")
getwd()
daily_attendance <- read_csv(
"data/archive/2018-2019_Daily_Attendance_20240429.csv"
)
glimpse(daily_attendance)
library(tidyverse)
guest <- read_csv("data/Guest.csv")
guest <- read_csv("data/Guest.csv")
library(tidyverse)
guest <- read_csv("data/Guest.csv")
library(tidyverse)
guest <- read_csv("data/Guest.csv")
getwd()
list.files("data")
file.exists("data/Guest.csv")
file.access("data/Guest.csv", 4)  # 0 means readable, -1 means NOT readable
library(tidyverse)
guest             <- read_csv("data/Guest.csv")
