
#plot1.R 

#reading data
source("preparedata.R")

#plotting to a screen 
hist(data$Global_active_power, main="Global Active Power",  
        xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red") 


#save plot - hist to a file plot1 after it is seen on the screen 
dev.copy(png, file="plot1.png", height=480, width=480) 
dev.off() 


