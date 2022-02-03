library(tidyverse)
library(ggplot2)

college <- read.csv("college.csv")

summary(college)

college <- college %>% 
  mutate(state = as.factor(state), region = as.factor(region), highest_degree = as.factor(highest_degree), gender = as.factor(gender))

unique(college$loan_default_rate)

college <- college %>% 
  mutate(loan_default_rate = as.numeric(loan_default_rate))

ggplot(data = college)

ggplot(data = college) + 
  geom_bar(mapping = aes(x = region))

ggplot(data = college) + 
  geom_bar(mapping = aes(x = region, fill = control))

ggplot(data = college) + 
  geom_bar(mapping = aes(x = region, fill = control)) +
  theme(panel.background = element_blank()) +
  theme(plot.background = element_blank()) +
  ylab("Number of Schools") +
  xlab("Region") +
  ylim(0,500)
  
library(tidyverse)
library(ggplot2)
college <- read.csv("college.csv")
college <- college %>% 
  mutate(state = as.factor(state), region = as.factor(region), highest_degree = as.factor(highest_degree), gender = as.factor(gender),loan_default_rate = as.numeric(loan_default_rate))

ggplot(data = college) +
  geom_bar(mapping = aes(x = region, fill = control)) +
  theme(panel.background = element_blank()) +
  theme(plot.background = element_blank()) +
  scale_x_discrete(name = "Region") +
  scale_y_continuous(name = "Number of Schools", limits = c(0,500)) +
  scale_fill_manual(values = c("orange","skyblue"), guide = guide_legend(title = "Institution Types", nrow =1, label.position = "bottom", keywidth = 2.5)) +
  theme(legend.position = "right")