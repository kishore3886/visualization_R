
##-------------Histogram and Box Plots Using Base Package-------------


# Plot histogram of Sepal.Width using hist(); 

hist(iris$Sepal.Width)
hist(iris$Petal.Width)

hist(iris$Sepal.Length)
hist(iris$Petal.Length)

# type ?hist in R console and read up more about histograms




# Plot a histogram for Petal width and compare it with the plot above



# Make a boxplot of Petal.Length; read up on boxplots also. 
par(mfrow = c(1,2))

boxplot(iris$Petal.Length)
boxplot(iris$Sepal.Width)
boxplot(iris$Petal.Width)

insect<-InsectSprays

View(insect)
boxplot(insect$count,insect$spray)