data(USJudgeRatings)
str(USJudgeRatings)
boxplot(USJudgeRatings$RTEN)
boxplot(USJudgeRatings$RTEN, horizontal = TRUE)
boxplot(USJudgeRatings$RTEN, horizontal = TRUE, xlab = "Lawyer Ratings")
boxplot(USJudgeRatings$RTEN, horizontal = TRUE, notch =  TRUE, xlab = "Lawyer Ratings")
boxplot(USJudgeRatings$RTEN, horizontal = TRUE, notch =  TRUE, xlab = "Lawyer Ratings", ylim = c(0,10)
boxplot(USJudgeRatings$RTEN, horizontal = TRUE, notch =  TRUE, xlab = "Lawyer Ratings", ylim = c(0,10))
boxplot(USJudgeRatings$RTEN, horizontal = TRUE, notch =  TRUE, xlab = "Lawyer Ratings", ylim = c(0,10),col = "slategray3")
boxplot(USJudgeRatings$RTEN, horizontal = TRUE, notch =  TRUE, xlab = "Lawyer Ratings", ylim = c(0,10),col = "slategray3",boxwex = 0.5)
boxplot(USJudgeRatings$RTEN, horizontal = TRUE, notch =  TRUE, xlab = "Lawyer Ratings", ylim = c(0,10),col = "slategray3",boxwex = 0.5,whisklty = 1)
boxplot(USJudgeRatings,      horizontal = TRUE, notch =  TRUE, xlab = "Lawyer Ratings", ylim = c(0,10),col = "slategray3",boxwex = 0.5,whisklty = 1, main = "Lawyers Ratings Vote Pole,America, /n 2001 to 2020")


library(ggplot2)
cars     <- read.csv("C:/Users/user/Desktop/Data_Visualization_with_ggplot2/Datasets/cars.csv")
cars_merc<- read.csv("C:/Users/user/Desktop/Data_Visualization_with_ggplot2/Datasets/cars_merc.csv")
head(cars)
head(cars_merc)
qplot(data=cars_merc, y=mpg, x=carname, geom="point")
qplot(data=cars_merc, y=mpg, x=carname, geom="point", color=cyl)


ggplot(data=cars_merc, aes(x = carname, y = mpg))
ggplot(data=cars_merc, aes(x = carname, y = mpg)) + geom_point()
ggplot(data=cars_merc, aes(x = carname, y = mpg)) + geom_point(aes(color = cyl))
ggplot(data=cars_merc, aes(x = carname, y = mpg)) + geom_point(aes(color = cyl, size = 2 ))


ggplot(data = cars_merc, aes(mpg)) 
ggplot(data = cars_merc, aes(mpg)) + geom_area(stat = "bin", binwidth = 1)
ggplot(data = cars_merc, aes(mpg)) + geom_area(stat = "bin", binwidth = 2)

ggplot(data = cars_merc, aes(mpg))  + geom_density(color="red")

ggplot(data = cars_merc, aes(mpg))  + geom_dotplot(binwidth=3)
ggplot(data = cars_merc, aes(mpg))  + geom_dotplot(binwidth=1)

ggplot(data = cars_merc, aes(mpg))  + geom_freqpoly()
ggplot(data = cars_merc, aes(mpg))  + geom_freqpoly(color="red")

 
 ggplot(data = cars_merc, aes(mpg))+ geom_bar()
 ggplot(data = cars,      aes(cyl))+ geom_bar()
 ggplot(data = cars_merc, aes(cyl))+ geom_bar()
 ggplot(data = cars_merc, aes(cyl))+ geom_bar(color="red")
 

