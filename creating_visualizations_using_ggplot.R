#----------Creating Visualizations Using ggplot()------------


# --------Plotting using ggplot2: mtcars data frame----------

# mtcars has observations of 32 cars with miles per gallon, cylinders, weight, no of gears etc.

mtcars

# Check structure of mtcars 

str(mtcars)

# This is the first plot using ggplot2 using the built-in data frame mtcars.
# Plot cyl on x and mpg on y axis
ggplot(mtcars, aes(x=cyl, y=mpg))+geom_point()

ggplot(mtcars, aes(x=factor(cyl), y=mpg))+geom_point()

# Identify which elements are in data, aes() and geom layers 
# Note that there are no 5 or 7 cylinder cars, but the plot shows 5 and 7 on x axis. Why?




# Use factor(cyl) this time, don't change anything else in the plot above
# ggplot can convert a num variable to a factor variable. Looks better, right?



# Reverse the order of variables: plot mpg on x and factor(cyl) on y 



# Plot am versus mpg (on x and y axes respectively)



# Should you use factor() here? 


#In the mtcars data set, the variable am stands for automatic or manual transmission. 
#The command for plotting am (x) versus mpg (y) is ggplot(mtcars, aes(x = ___,  y = ____  )) + geom_point()

#What are the most appropriate values of x and y respectively?
ggplot(mtcars, aes(x=am, y=mpg))+geom_point()
ggplot(mtcars, aes(x=factor(am), y=mpg))+geom_point()


#ggplot(mtcars, aes(x = wt,y = mpg, col = factor(cyl))) + geom_point()
#In the above command, what would be the effect of replacing factor(cyl) by just cyl?
par(mfrow = c(1,2))

ggplot(mtcars, aes(x = wt,y = mpg, col = cyl)) + geom_point()

ggplot(mtcars, aes(x = wt,y = mpg, col = factor(cyl))) + geom_point()

ggplot(mtcars, aes(x = wt,y = mpg, col = cyl)) + geom_point()

