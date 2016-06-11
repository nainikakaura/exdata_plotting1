subsetted<-read.table("household_power_consumption.txt", header = FALSE, sep=";", na.strings = "?", skip = 66637, nrows = 2880)
names(subsetted)= c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

png(filename = "plot1.png", width = 480, height = 480, units="px")
hist(subsetted$Global_active_power, col="red", xlab= "Global Active Power (kilowatts)", ylab="Frequency", main = "Global Active Power")
dev.off()



