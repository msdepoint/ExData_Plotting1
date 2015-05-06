#week 1 Exploratory Data Analysis
#plot1
setwd("C:/Users/Matthew/Documents/Coursera/Exploratory Data Analysis")
epc <- read.table("household_power_consumption.txt", header=TRUE,sep=";",na.strings = "?",
                  colClasses = c("character", "character", rep("numeric",7)))
head(epc)
#library(dplyr);
epc_subset <- epc[epc$Date %in% c("1/2/2007","2/2/2007") ,]
#head(epc_subset)
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
hist(epc_subset$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", breaks = 12, ylim = c(0, 1200))
dev.off()