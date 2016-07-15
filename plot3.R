# plot3.R
png(file = "plot3.png", width = 480, height = 480, units='px')
with(hpcfeb, plot(DateTime, Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering"))
with(hpcfeb, lines(DateTime, Sub_metering_2, col = "red"))
with(hpcfeb, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, y.intersp = 1)
dev.off()
