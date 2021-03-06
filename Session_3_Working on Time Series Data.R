## -----------Working on Time Series Data--------

# Lines are typically used to plot trends over time
# We will use the economics data frame (in-built in R)
# Economics frame contains 6 variables of US economics:
# Date, personal savings rate, personal expenditure, no of unemployed,
# median duration of unemployment and total US population

help("economics")
# Print out head of economics
head(economics)


# Plot unemploy as a function of date using a line plot
ggplot(economics,aes(x=date,y=unemploy))+geom_line()

# Note the steep dip at 2008 - That is teh infamous recession

ggplot(economics,aes(x=date,y=unemploy/pop))+geom_line()

# And that peak at 2010 when the economy recovered again..

ggplot(economics,aes(x=date,y=unemploy/pop,col=psavert))+geom_line()

ggplot(economics,aes(x=date,y=unemploy/pop,col=psavert))+geom_line()+ geom_point()





# Adjust the plot to represent the fraction of total population that is unemployed
# Fraction of unemployed is a better to judge the economy, don't you agree?


ggplot(data=economics,aes(x=date,y=unemploy)) +
  geom_line()+stat_summary(
    mapping = aes(x = date, y = unemploy),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median

)
require(gridExtra)
p1 <- ggplot(economics, aes(x = date, y = unemploy)) + geom_line()
p2 <- ggplot(economics, aes(x = date, y = uempmed)) + geom_line()
grid.arrange(p1, p2, ncol=2)

# Mapping color to average savings rate: Trend is difficult to observe using this plot
# The colour variation (savings rate) is barely noticeable






# To observe how savings rate affects the economy, we need to see color better 
# Add points along with line for better readability
# Just add a geom_point layer to the geom_line 



# --Observations from the plot---

# It's more readable now: The dark blue regions are periods when people saved less money, 
# light blue means they saved more 
# Personal savings started dropping steeply just before 2000 and 2008
# And these were the two recession periods. When people save less, the economy is in danger
# This plot, if made in 2007, could have saved the world from a disaster, right? 









## -----------Observing recent unemployment ----------

# Next, let's observe only the recent unemployment rate
# Say you want to know only the trend after 1st Jan 2013
# We can create a smaller data frame called recent and plot unemployment v/s to


# Create recent data frame with Date > January 1, 2013






# Check structure os recent data frame






# Plot date on a and unemployment on y axis, use geom_line






# Step Plot: A step plot is another variation of the geom layer
# Steps help you observe the exact time points when steep changes occur

# Can you now observe the periods when unemployment reduced rapidly? 

recent<-economics[economics$date> as.Date ("2013-01-01"),]
str(recent)
ggplot(recent,aes(date,unemploy))+geom_line()

ggplot(recent,aes(date,unemploy))+geom_step()
