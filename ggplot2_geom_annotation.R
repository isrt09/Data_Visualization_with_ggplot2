library(tidyverse)
library(ggplot2)
college <- read.csv("college.csv")
college <- college %>% 
  mutate(state = as.factor(state), region = as.factor(region), highest_degree = as.factor(highest_degree), gender = as.factor(gender),loan_default_rate = as.numeric(loan_default_rate))

ggplot(data = college)

ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg, color = control,size = undergrads), alpha = 1/2 ) +
  annotate("text", label = "Elite Privates", x = 25000, y = 1500) +
  geom_hline(yintercept = mean(college$sat_avg)) +
  annotate("text", label = "Mean SAT", x = 25000, y = mean(college$sat_avg)-25) +
  geom_vline(xintercept = mean(college$tuition)) +
  annotate("text", label = "Mean Tuition", y = 700, x = mean(college$tuition)+4000) +
  theme(panel.background = element_blank(), legend.key = element_blank()) +
  scale_color_discrete(name = "Institution Type") +
  scale_size_continuous(name = "Undergrades") +
  scale_x_continuous(name="Tuition") +
  scale_y_continuous(name = "SAT Scores in USA") +
  theme(legend.position = "top") + ggtitle("Colleges are in southern area in USA", subtitle ="Source : US Labour Statistics 2020-21")

ggplot(data = college) +
  geom_bar(mapping = aes(x = region, fill = control)) +
  scale_fill_manual(values = c("orange","skyblue"), guide = guide_legend(title = "Institution Types", keywidth = 2.5)) +
  theme_void()