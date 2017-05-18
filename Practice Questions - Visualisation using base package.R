##------- Practice Questions -------------------

CO2

# Q1.1 - load the data set "CO2" and store it in a variable plantdata

plantdata <- CO2
  
  # Q1.2 - See the meaning of all the variables using ? command
  
  ?CO2
  
  # Q1.3 - Run the str command and understand the structure of the data set

str(plantdata)

  # Q1.4 - Use plot() command to plot the uptake vs the conc. Use colour for Type

plot(plantdata$uptake, plantdata$conc, col = plantdata$Type)

  # Q1.5 - Use box plot to compare the CO2 uptake by 

#a) Various plants
boxplot(plantdata$Plant,plantdata$uptake)

#b) Various plant types
boxplot(plantdata$Type,plantdata$uptake)


#c) Various treatments
boxplot(plantdata$Treatment,plantdata$uptake)


  # Q1.6 - Plot a histogram to study the most common uptake among Mississippi and Quebec plants
#Read the following link to see possible solutions: http://stackoverflow.com/questions/8293547/how-to-plot-a-subset-of-a-data-frame-in-r
#Then plot them side by side

par(mfrow = c(1,1))
hist(plantdata$uptake[plantdata$Type == _____])
hist(plantdata$uptake[plantdata$Type == _____])

  # Q1.7 - Plot the uptake vs conc using ggplot functions. Use shape for type and col for treatment. Try using different sizes for better visual clarity.
ggplot(___, aes(x = ___, y = ___, shape = ___, col = ___)) + geom_point(size = ___)
  

#practice
#Use the CO2 data set that you used in the practice questions. It is in inbuilt data set in R. Load it and answer the following question: Plot a graph of concentration vs the uptake. Which of the following statements is true? Only one option is correct.
boxplot(plantdata$uptake~plantdata$conc,plantdata$Type,plantdata$Treatment) 

#Use the iris data set to answer the following questions. Which of the following is correct?

iris
plot(iris$Species,iris$Petal.Length) 
plot(iris$Species,iris$Sepal.Length) 

ggplot(iris, aes(x = iris$Petal.Length, y = iris$Petal.Width, col = iris$Species)) + geom_point()

