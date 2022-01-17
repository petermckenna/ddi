# This is my first r script

# create subdirectories
dir.create("data_raw")
dir.create("data_tidy")

# install packages
install.packages("tidyverse")

# load package
library(tidyverse)

# Some R fun

3+5

12/7

x <- 23

y <- 67

x*y

sqrt(4)

sqrt(x*y)

args(sqrt)

round(5.67782, digits = 2)

args(round)

# Vectors and data

test_scores <-
  c(3,5,2,8,7)

test_scores  

students <-
  c("Ronald", "Sophie", "Max", "Teresa", "Mandy")

class(students)

class(test_scores)

students <-
  c(students, "Dennis")

# Subsetting

test_scores[2]

test_scores[c(5,4,2,1,10)]

# Re-order elements of vector

students <-
  students[c(6,1:5)]

students[students == "Teresa"]

str_detect(students, "a")

str_subset(students, "a")

test_scores[test_scores > 100]

# Tidyverse

download.file("https://github.com/petermckenna/ddi/blob/main/exp_data.csv", "data_raw/exp_data.csv", mode = "wb")

data <-
  read_csv("data_raw/exp_data_1.csv")

View(data)

summary(data)

# Data wrangling

data[1] # baseR

data %>%
  select(id) # tidyverse

glimpse(data)

head(data)

tail(data)

data %>%
  filter(voice_type == "female")

data %>%
  filter(voice_type == "male",
         id == 1:5)























