#plot3.R
# function creating plot from subset of data 
# to a png file - nothing is seen on the screen as file is defined prior to plot

#reading data
source("preparedata.R")

#plot file defined in the current working dir 
png(filename = "plot3.png", height=480, width=480)


#plot from data as it is creating the plot in a file predefined above 
plot(DateTime, Sub_metering_1,
type = "l",
col = "black",
xlab = "", ylab = "Energy sub metering")

lines(DateTime, Sub_metering_2, col = "red")

lines(DateTime, Sub_metering_3, col = "blue")
legend("topright",
col = c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lwd = 1)

dev.off()