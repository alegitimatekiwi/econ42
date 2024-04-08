# Explore snowfall in Bear Valley
# Econ 42, Spring 2024
# Prof Michael Kevane

# load packages
# install.packages("XML")
  library(XML)
  library(tidyverse)

# Read a simple table off a website
  snow <- read.csv("G:/.shortcut-targets-by-id/0Bwb-qpuxP7mHOGtDaTh2X3R5Qms/ECON 41-42 shared/bear_valley_snowfall_2024.csv")
# create a variable for year
  snow <- snow %>%  mutate(year=row_number()+1967)

# Has snowfall declined over time? 
  snow  %>%  ggplot(aes(x=year, y=Total)) + geom_point() 
  # A regression - the equation of the best fit line
  lm(Total~year, data=snow)
  # A scatter plot with best fit line
  snow  %>%  ggplot(aes(x=year, y=Total)) + geom_point() + geom_smooth(method="lm") 
  # Can we improve the scatter plot?
  
# What other statistics and visualizations can we do?
  # A regression with statistics
  summary(lm(Total~year, data=snow))