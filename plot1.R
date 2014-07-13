## Script for Reading in EDA DataSet ##
# newdata <- read.table("household_power_consumption.txt",header=T,sep=";",stringsAsFactors=F)

## Subset data for Project 1 : Feb 1, Feb 2 2007 ##
# library(sqldf)
# newdf <- sqldf("select * from newdata where Date in ('1/2/2007','2/2/2007')",row.names=TRUE)

# Recast data frame variables #

# newdf$Time <- strptime(paste(newdf$Date, newdf$Time), "%d/%m/%Y %H:%M:%S")

# recast observations to numeric data types #

#V1 <- as.numeric(newdf$Global_active_power)
#V2 <- as.numeric(newdf$Global_reactive_power)
#V3 <- as.numeric(newdf$Voltage)
#V4 <- as.numeric(newdf$Global_intensity)
#V5 <- as.numeric(newdf$Sub_metering_1)
#V6 <- as.numeric(newdf$Sub_metering_2)
#V7 <- as.numeric(newdf$Sub_metering_3)

# update dataframe with recast observations #

# newdf$Global_active_power <- V1
# newdf$Global_reactive_power <- V2
# newdf$Voltage <- V3
# newdf$Global_intensity <- V4
# newdf$Sub_metering_1 <- V5
# newdf$Sub_metering_2 <- V6
# newdf$Sub_metering_3 <- V7



# Plot 1
# png(filename="plot1.png",width=480,height=480)
# hist(newdf$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",col="Red")
# dev.off()
