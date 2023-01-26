# read the dataset
df = car_sales

# viewing data
View(df)

# str function
str(df)

# summary function
summary(df)

# correlation matrix
cor(df)

# scatterplot matrix
pairs(df)

# model1
model1 = lm(Sales ~ ., data = df)
summary(model1)

# model2
model2 = lm(Sales ~ CPI_all, data = df)
summary(model2)

# model3
model3 = lm(Sales ~ CPI_all + Queries, data = df)
summary(model3)

# model4
model4 = lm(Sales ~ CPI_all + Queries + Month, data = df)
summary(model4)

# making month categorical
df$Month = as.factor(df$Month)
str(df)

# boxplot of Sales vs Month
boxplot(Sales ~ Month, data = df)

# model5
model5 = lm(Sales ~ CPI_all + Queries + Month, data = df)
summary(model5)

# model6
model6 = lm(Sales ~ CPI_all + Month, data = df)
summary(model6)

# structure
str(df)
# correlation matrix with selected variables
cor(df[  , c(1,2,3,4,)])

# scatterplot matrix with selected variables
pairs(df[ , c(2:7)])
