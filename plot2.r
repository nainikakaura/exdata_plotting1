subsetted<-read.table("household_power_consumption.txt", header = FALSE, sep=";", na.strings = "?", skip = 66637, nrows = 2880)
names(subsetted)= c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

png(filename = "plot2.png", width = 480, height = 480, units="px")
subsetted$Date<- strptime(paste(subsetted$Date, subsetted$Time), format = "%e/%m/%Y %H:%M:%S")
plot(subsetted$Date, subsetted$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)")
dev.off()
