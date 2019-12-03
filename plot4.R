# Set working directory
setwd("d:/Data science specialization/Exploratory Data Analysis/week 1")

# Read the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", quote = "", na.strings = "?")

# Extract only the required portion of the data
data_Extract <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# convert Date and Time variables to Date/Time classes
Date_Time <- strptime(paste(data_Extract$Date, data_Extract$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

# Plotting the graphs
par(mfrow = c(2, 2))

# plot 1
plot(Date_Time, data_Extract$Global_reactive_power, type = "l", xlab = "", ylab = "Global Active Power")

# plot 2
plot(Date_Time, data_Extract$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# plot 3
plot(Date_Time, data_Extract$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(Date_Time, data_Extract$Sub_metering_2, col = "red")
lines(Date_Time, data_Extract$Sub_metering_3, col = "blue")
legend("topright", lty = 1, lwd = 1, legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"), col = c("black", "red", "blue"))

# plot 4
plot(Date_Time, data_Extract$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

# Save plot as PNG
dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()
