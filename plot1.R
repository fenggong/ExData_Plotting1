# plot1.R; read and subset the data, make the first plot
hpc <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
hpcfeb <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
png(file = "plot1.png", width = 480, height = 480, units='px')
hist(hpcfeb$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
