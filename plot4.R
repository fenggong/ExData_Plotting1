# plot4.R
png(file = "plot4.png", width = 480, height = 480, units='px')
par(mfcol = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(hpcfeb, {
        plot(DateTime, Global_active_power, xlab = " ", ylab = "Global Active Power (kilowatts)", type = "l")
        plot(DateTime, Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering")
        lines(DateTime, Sub_metering_2, col = "red")
        lines(DateTime, Sub_metering_3, col = "blue")
        legend("topright", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, y.intersp = 1, cex = 1)
        plot(DateTime, Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
        plot(DateTime, Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")
})
dev.off()