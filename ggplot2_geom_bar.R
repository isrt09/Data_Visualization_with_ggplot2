library(tidyverse)
library(ggplot2)

college <- read.csv("college.csv")

summary(college)

college <- college %>% 
  mutate(state = as.factor(state), region = as.factor(region), highest_degree = as.factor(highest_degree), gender = as.factor(gender))

unique(college$loan_default_rate)

college <- college %>% 
  mutate(loan_default_rate = as.numeric(loan_default_rate))

# Bar vs Column
ggplot(data = college) 

ggplot(data = college) +
  geom_bar(mapping = aes(x = region))

ggplot(data = college) +
  geom_bar(mapping = aes(x = region, fill = region))

ggplot(data = college) +
  geom_bar(mapping = aes(x = region, fill = control))

college %>% 
  group_by(region) %>% 
  summarize(average_salary = mean(faculty_salary_avg))

college %>% 
  group_by(region) %>% 
  summarize(average_salary = mean(faculty_salary_avg)) %>% 
  ggplot() +
    geom_bar(mapping = aes(x = region, y = average_salary)) # Error occured ...

college %>% 
  group_by(region) %>% 
  summarize(average_salary = mean(faculty_salary_avg)) %>% 
  ggplot() +
    geom_col(mapping = aes(x = region, y = average_salary, fill = region))

