# plot2.R
hpcfeb$Date <- as.Date(hpcfeb$Date, format = "%d/%m/%Y")
hpcfeb$DateTime <- strptime(paste(hpcfeb$Date, hpcfeb$Time), format = "%Y-%m-%d %H:%M:%S")
png(file = "plot2.png", width = 480, height = 480, units='px')
with(hpcfeb, plot(DateTime, Global_active_power, xlab = " ", ylab = "Global Active Power (kilowatts)", type = "l"))
dev.off()
