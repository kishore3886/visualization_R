
##-------------Bar Charts in ggplot--------------------

# setting the ggplot object
cyl.am<- ggplot(mtcars, aes(x=factor(cyl)))
cyl.am+ geom_bar(col="red")
cyl.am
# The base layer is available : cyl.am

cyl.am+geom_bar(alpha = 0.4, position = position_dodge(0.4))
# Add geom (position = "stack" by default)


# Fill - show proportion
cyl.am<-cyl.am+ aes(fill= factor(am))
cyl.am+geom_bar()
cyl.am+geom_bar(position = "fill")
cyl.am+geom_bar(fill='red')


mtcars
cyl.am<-cyl.am+ aes(fill= factor(carb))
cyl.am+geom_bar()


mtcars

