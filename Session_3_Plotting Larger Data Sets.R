##------------Plotting Larger Data Sets-----------------


# See structure of diamonds data frame

str(diamonds)


# Plot carat on x and price on y axis; use geom_point
# This is a plot with over 50,000 data points

ggplot(diamonds,aes(x=carat,y=price))+geom_point()


# Add geom_smooth() after the geom_point() to fit a smooth line, just use a + sign
# Note that + sign simply adds a geometric layer geom_smooth over geom_point
# You can add as many geometric layers as you wish!  
ggplot(diamonds,aes(x=carat,y=price))+geom_point()+geom_smooth()

ggplot(diamonds,aes(x=carat,y=price,col=clarity))+geom_smooth()

diamonds


# Show only the smooth line: Remove the geom_point layer
ggplot(diamonds,aes(x=carat,y=price,col=clarity))+geom_point(alpha=0.4)

# Map col to clarity in the aes() of ggplot
# Diamonds come in different clarity levels, each having its own pricing methodology
# Can you see which clarity level is the cheapest? 




# Keep the color settings as they are (col mapped to clarity) 
# Plot using geom_point instead of geom_smooth and use alpha = 0.4 inside geom_point
# Alpha is a measure of transparency and is useful to plot large data sets neatly 
# (somewhat neatly)



# Try changing alpha from 0.9 to 0.1 (it's a fraction)

ggplot(diamonds,aes(x=carat,y=price,col=clarity))+geom_point(alpha=0.9)

ggplot(diamonds,aes(x=carat,y=price,col=clarity))+geom_point(alpha=0.7)
ggplot(diamonds,aes(x=carat,y=price,col=clarity))+geom_point(alpha=0.5)


## Visual as Objects:

dia_plot <- ggplot(diamonds, aes(x = carat, y = price))
dia_plot2<-ggplot(diamonds,aes(x=carat,y=price,col=clarity))+geom_point(alpha=0.5)

dia_plot

# Expand dia_plot by adding geom_point() with alpha set to 0.2

dia_plot <- dia_plot + geom_point(alpha = 0.8)

dia_plot+geom_smooth()
dia_plot+geom_curve()


