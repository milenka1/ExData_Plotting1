#plot4.R drows multiple plots in one file


#reading data
source("preparedata.R")

#plot file defined
png(filename = "plot4.png", height=480, width=480)


#sets multiple plots in one file/screen
par(mfrow = c(2, 2))

## Legend - top-left 
plot(DateTime, Global_active_power,
type = "l",
xlab = "", ylab = "Global Active Power")

## Legend- top-right
plot(DateTime, Voltage,
type = "l",
xlab = "datetime", ylab = "Voltage")

## Legend - bottom-left 
plot(DateTime, Sub_metering_1,
type = "l",
col = "black",

xlab = "", ylab = "Energy sub metering")

lines(DateTime, Sub_metering_2, col = "red")

lines(DateTime, Sub_metering_3, col = "blue")


# Remove the border of legend here.
legend("topright",
bty = "n",
col = c("black", "red", "blue"),
c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
lwd = 1)

#plot creationg 
plot(DateTime, Global_reactive_power,
type = "l",
col = "black",

xlab = "datetime", ylab = colnames(workData)[4])

dev.off()