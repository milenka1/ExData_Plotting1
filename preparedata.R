#preparedata.R
#once the data is downloaded this functions prepares the data based on requirments 

file <- "household_power_consumption.txt"

#organizes the txt file in table with 9 columns as originally flat file has 1 column

data <- read.table(file, 
                   header = TRUE, 
                    sep = ";", 
                    colClasses = c("character", "character", rep("numeric",7)), 
                    na = "?") 

 
#subseting data as only two days of observations are needed  

subset <- data$Date == "1/2/2007" | data$Date == "2/2/2007"  # worked and returned logical 

workData <- data[subset, ]    

#formating date&time using strptime() 

 t <- paste(Date, Time) 
 workData$DateTime <- strptime(t, "%d/%m/%Y %H:%M:%S") 


 
 