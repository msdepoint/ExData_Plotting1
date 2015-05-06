#week 1 Exploratory Data Analysis
#plot3
setwd("C:/Users/Matthew/Documents/Coursera/Exploratory Data Analysis")
epc <- read.table("household_power_consumption.txt", header=TRUE,sep=";",na.strings = "?",
                  colClasses = c("character", "character", rep("numeric",7)))
head(epc)
#library(dplyr);
epc_subset <- epc[epc$Date %in% c("1/2/2007","2/2/2007") ,]

epc_datetime <- strptime(paste(epc_subset$Date, epc_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)
plot(epc_datetime, epc_subset$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(epc_datetime, epc_subset$Sub_metering_2, type="l", col="red")
lines(epc_datetime, epc_subset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
