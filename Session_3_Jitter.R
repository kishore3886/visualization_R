##Jitter 



# Plot the cyl on the x-axis and wt on the y-axis
ggplot(mtcars, aes(x=cyl,y=wt))+geom_point()

# Note that points on 3 vertical lines are not easy to read


ggplot(mtcars, aes(x=cyl,y=wt))+geom_point(position = "jitter")



# Use geom_jitter() instead of geom_point(); Jitter is a type of point plot used to avoid overplotting,
# especially for categorical variables like cyl. Jitter can be written as a position in the geom_point layer,
# which means the code below is same as geom_point(position = "jitter") 

# Note that jitter plot scatters the points a little too much




# Let's avoid the random scatter made by jitter using a width argument in jitter
# You can define a position object and put it inside 
# Define a position object using position_jitter(): 


jitter_posn<-position_jitter(width = 0.5)

# Use jitter_posn object inside the geom_point in geom_point() or geom_jitter
# Both commands below are exactly the same


ggplot(mtcars, aes(x=cyl,y=wt))+geom_point(position = jitter_posn)
sunflowerplot ( iris$Petal.Length, iris$Petal.Width, col = iris$Species,size = 15)

dia.object <- ggplot(diamonds, aes(x = clarity, y = carat)) + geom_point(col = diamonds$price)
dia.object

dia.object <- ggplot(diamonds, aes(x = clarity, y = carat, col = price)) + geom_bar()

dia.object <- ggplot(diamonds, aes(x = clarity, y = carat, col = price))
dia.object + geom_point()
dia.object + geom_point(position = "jitter")

ggplot(diamonds, aes(x = clarity, y = carat, col = price)) + stat_sum()
