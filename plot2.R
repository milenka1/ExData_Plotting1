#Plot2.R
#in this case nothing is seen on the screen 
#as the file is defined prior to the actual plot from data

#reading data
source("preparedata.R")

#defining the plot file in the current working dir 

png(filename = "plot2.png", height=480, width=480)


#plot based on data
plot(DateTime, Global_active_power,
type = "l",
xlab = "",
ylab = "Global Active Power (kilowatts)")

dev.off()

