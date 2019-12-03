# Set working directory
setwd("d:/Data science specialization/Exploratory Data Analysis/week 1")

# Read the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", quote = "", na.strings = "?")

# Extract only the required portion of the data
data_Extract <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

# Plotting histogram
hist(data_Extract$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")

# Save plot as PNG
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()

