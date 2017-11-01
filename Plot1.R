# Set Working Directory
setwd("C:/ExData_Plotting1")

# Load Data and convert Date and Time variables
powerConsumption <- read.table("./household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, header = TRUE, colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")
powerConsumption$Time <- strptime(paste(powerConsumption$Date, powerConsumption$Time), format = "%d/%m/%Y %H:%M:%S")
powerConsumption$Date <- as.Date(powerConsumption$Date, format = "%d/%m/%Y")

# Keeping only dates of interest 
powerConsumption <- subset(powerConsumption, Date == "2007-02-01" | Date == "2007-02-02")

# PLOT 1
png(filename = "Plot1.png", width = 480, height = 480, units = "px")
hist(powerConsumption$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
