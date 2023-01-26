# read data
auto <- Auto

# View data
View(auto)

# printing first few rows
head(auto, 7)

# last few rows
tail(auto)

# str function
str(auto)

# summary function
summary(auto)

# identifying missing values
auto[auto == '?'] <- NA

# change horsepower to numeric
auto$horsepower = as.numeric(auto$horsepower)
str(auto)
summary(auto)

# change origin to categorical
auto$origin = as.factor(auto$origin)
summary(auto)

# dimensions of the dataset
nrow(auto)
ncol(auto)
dim(auto)

# variable names
names(auto)

# summary of a variable
summary(auto$mpg)

# table output
table(auto$cylinders)

# two-way table
table(auto$cylinders, auto$origin)

# barplot for categorical
?barplot
help(barplot)
barplot(table(auto$origin))

# adding labels
barplot(table(auto$origin), col = c('red', 'blue', 'yellow'), 
        names.arg = c('American', 'European', 'Japanese'))

# histogram for quantitative
hist(auto$mpg, col = 'whitesmoke')

# color choices
colors()

# histogram bins
hist(auto$mpg, col = 'peachpuff', breaks = 20, xlab = 'MPG',
     main = 'Distribution of MPG', ylab = '')

# quantitative vs categorical
plot(auto$origin, auto$mpg)

# mpg vs cylinders
plot(auto$cylinders, auto$mpg)

# boxplot y~ x
boxplot(auto$mpg ~ auto$cylinders)

# cylinders to factor
auto$cylinders = as.factor(auto$cylinders)
str(auto)

# mpg vs cylinders
plot(auto$cylinders, auto$mpg)

# mpg vs year
plot(auto$year, auto$mpg)

# boxplot y~ x
boxplot(auto$mpg ~ auto$year, horizontal = T)

# two quantitative mpg vs weight
plot(auto$weight, auto$mpg)

# correlation mpg vs weight
cor(auto$weight, auto$mpg)

# scatterplot of mpg vs acceleration
plot(auto$acceleration, auto$mpg)
# correlation between mpg and acceleration
cor(auto$acceleration, auto$mpg)

# scatterplot of mpg vs displacement
plot(auto$displacement, auto$mpg)
# correlation between mpg and displacement
cor(auto$displacement, auto$mpg)

# scatterplot matrix
pairs(auto[ , c(1,3,4,5,6,7)])

# correlation matrix
cor(auto[ , c(1,3,4,5,6,7)], use = 'pairwise.complete.obs')

# create label for origin variable
auto$originlabel = factor(auto$origin, levels = 1:3,
                          labels = c('American', 'European', 'Japanese'))
str(auto)
plot(auto$originlabel, auto$mpg)

# tapply function
tapply(auto$mpg, auto$originlabel, mean)
tapply(auto$mpg, auto$originlabel, median)
tapply(auto$mpg, auto$originlabel, summary)

# tapply 
tapply(auto$mpg, auto$cylinders, summary)

# subsetting dataset
American = subset(auto, originlabel == 'American')
boxplot(American$mpg ~ American$year) 

# subset European cars
European = subset(auto, originlabel == 'European')
Japanese = subset(auto, originlabel == 'Japanese')

summary(auto$mpg)

# high mpg cars
high_mpg = subset(auto, mpg >= 23)

# mediun mpg cars
med_mpg = subset(auto, mpg >= 17 & mpg <= 29)

# extreme mpg <= 17 or >= 29
ex_mpg = subset(auto, mpg <= 17 | mpg >= 29)
str(ex_mpg)
