# Set working directory
setwd("d:/Data science specialization/Exploratory Data Analysis/week 1")

# Read the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", quote = "", na.strings = "?")

# Extract only the required portion of the data
data_Extract <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# convert Date and Time variables to Date/Time classes
Date_Time <- strptime(paste(data_Extract$Date, data_Extract$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

# plot the graph
plot(Date_Time, data_Extract$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")

# Save plot as PNG
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()
