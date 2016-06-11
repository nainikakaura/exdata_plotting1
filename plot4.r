png(filename = "plot4.png", width = 480, height = 480, units="px")
par(mfrow=c(2,2))
plot(subsetted$Date, subsetted$Global_active_power, type="l", xlab = "", ylab="Global Active Power")

plot(subsetted$Date, subsetted$Voltage, type="l", xlab = "datetime", ylab="Voltage")

plot(subsetted$Date, subsetted$Sub_metering_1, type="l", xlab="", ylab = "Energy sub metering")
lines(subsetted$Date, subsetted$Sub_metering_2, col="red")
lines(subsetted$Date, subsetted$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, lty = 1)

plot(subsetted$Date, subsetted$Global_reactive_power, type="l", xlab = "datetime", ylab="Global_reactive_power")

dev.off()