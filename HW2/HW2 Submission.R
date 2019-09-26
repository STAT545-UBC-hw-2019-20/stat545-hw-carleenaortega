HW2
library(dplyr)
library(tibble)
library(gapminder)


# 1.1 Filter Data:
#Use filter() to subset the gapminder data to three countries of your choice in the 1970’s.

gapminder_2 <- filter(gapminder,year <= 1970 & year >= 1980 & country == "Iran" | country == "Canada"| country =="Mexico")
gapminder_2

# 1.2
#Use the pipe operator %>% to select “country” and “gdpPercap” from your filtered dataset in 1.1.

#1.3
#Filter gapminder to all entries that have experienced a drop in life expectancy. Be sure to include a new variable that's the increase in life expectancy in your tibble. Hint: you might find the lag() or diff() functions useful