
# sets the dowload dir 
.exdir = '/Users/mi7626/ExData_Plotting1'
.file = file.path(.exdir, 'household_power_consumption.zip')

# download file - in set already dir in zip format 
url = 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(url,.file)

