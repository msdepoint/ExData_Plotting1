#week 1 Exploratory Data Analysis
#plot2
setwd("C:/Users/Matthew/Documents/Coursera/Exploratory Data Analysis")
epc <- read.table("household_power_consumption.txt", header=TRUE,sep=";",na.strings = "?",
                  colClasses = c("character", "character", rep("numeric",7)))
head(epc)
#library(dplyr);
epc_subset <- epc[epc$Date %in% c("1/2/2007","2/2/2007") ,]

epc_datetime <- strptime(paste(epc_subset$Date, epc_subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(epc_datetime, epc_subset$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()