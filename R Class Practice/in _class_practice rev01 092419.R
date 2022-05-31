
  
library(tidyverse)

mpg %>% ggplot(aes(displ, hwy, col = class)) +
  geom_point()

install.packages("nycflights13")

library(nycflights13)

jan1 <- flights %>% filter(month == 1, day ==1)

jan1

filter(flights, month == 11 | month == 12)

filter(flights,is.na())

install.packages("devtools")
library(devtools)
