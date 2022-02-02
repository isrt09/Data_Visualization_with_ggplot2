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
  geom_point(mapping = aes(x = tuition, y = sat_avg ))

ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg, shape = control ))

ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg, shape = control, color = control ))

ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg, shape = control, color = control,size = undergrads ))

ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg, shape = control, color = control,size = undergrads ),alpha = 1 / 2)


ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg))

ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg, color = control))

ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg, color = control), alpha = 0.5)

ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg, color = control,size = undergrads), alpha = 0.5)

ggplot(data = college)+
  geom_bar(aes(region, fill = region))


ggplot(data = college) +
  geom_point(mapping = aes(x = tuition, y = sat_avg, color = control)) +
  geom_line(mapping = aes(x = tuition, y = sat_avg, color = control))
  
ggplot(data = college, mapping = aes(x = tuition, y = sat_avg, color = control)) +
  geom_point() +
  geom_line()

ggplot(data = college, mapping = aes(x = tuition, y = sat_avg, color = control)) +
  geom_smooth() +
  geom_line()

ggplot(data = college, mapping = aes(x = tuition, y = sat_avg, color = control)) +
  geom_smooth() +
  geom_point(alpha = 1/2)

ggplot(data = college, mapping = aes(x = tuition, y = sat_avg, color = control)) +
  geom_smooth() +
  geom_point(alpha = 1/25)

ggplot(data = college, mapping = aes(x = tuition, y = sat_avg, color = control)) +
  geom_smooth(se=FALSE) +
  geom_point(alpha = 1/25)