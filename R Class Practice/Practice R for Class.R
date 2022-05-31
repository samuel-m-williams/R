install.packages("swirl")

library(swirl)

install_from_swirl("Data Analysis")

install_from_swirl("R Programming")

# Import Critical Packages
install.packages("readxl")
library(readxl)
install.packages("tidyr")
library(tidyr)
install.packages("broom")
library(broom)
install.packages("lubridate")
library(lubridate)
install.packages("tidyverse")
library(tidyverse)
install.packages("GGally")
library(GGally)
library(stats)



excel_sheets("department_data.xlsx")

raw_data <- read_excel("department_data.xlsx", sheet = "RCW_data_long")

raw_data

ggplot(raw_data, aes(Semester_Date, Count)) +
  geom_line() +
  facet_grid(Department~.)
==
library(tidyverse) 

c <- c(1:25)*0

x <- 2:11

x[-c(2,10)]
