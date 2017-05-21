install.packages("zoo")
library(zoo)
ukacc <- data.frame(Seatbelts, date = as.Date(as.yearmon((time(Seatbelts)))))
head(ukacc)

#Plot a graph of drivers on the y-axis and date on the x-axis. 
#What is your observation? Choose the best answer among the following options.

ggplot(ukacc,)
#All 3 have similar pattern in time
ggplot(ukacc,aes(x = row.names(ukacc), y = ukacc$drivers), col = "black", size = 1) + geom_line() +
geom_line(data = ukacc,aes(x = ukacc$date, y = ukacc$front), col = "red", size = 1) + 
geom_line(data = ukacc,aes(x = ukacc$date, y = ukacc$rear), col = "blue", size = 1)

# Use the following command to plot the box plot:
ggplot(ukacc, aes(group = year,x = date, y=ukacc$drivers)) + geom_boxplot()

ggplot(USArrests, aes(x = row.names(USArrests), y = USArrests$Murder, lab))+geom_col() + theme(axis.text.x=element_text(angle=90, hjust=1))

library("sleep")
sleep

ggplot(sleep, aes(x = ID, y = extra, fill = group)) + geom_bar()
ggplot(sleep, aes(x = ID, y = extra, fill = group)) + geom_histogram()
ggplot(sleep, aes(x = ID, y = extra, fill = group)) + geom_col(position = "dodge")
ggplot(sleep, aes(x = ID, y = extra, fill = group)) + geom_freqpoly()

cric<-read.csv("C:/Users/User/Downloads/sir.csv")

head(cric)
cric
ggplot(cric,aes(x=cric$Inns,y=cric$Wkts))+geom_line()

ggplot(cric,aes(x=as.numeric(Mdns),y =as.numeric(Econ)))+geom_point()+geom_smooth()
