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

# Plot 4
# png(filename="plot4.png",width=480,height=480)
# opar <- par(no.readonly=TRUE)
# par(mar=c(5,5,3,3))
# par(mfrow=c(2,2))
# plot(newdf$Time,newdf$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
# plot(newdf$Time,newdf$Voltage,type="l",xlab="datetime",ylab="Voltage",lty=1)
# plot(newdf$Time,newdf$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
# lines(newdf$Time,newdf$Sub_metering_2,type="l",col="Red")
# lines(newdf$Time,newdf$Sub_metering_3,type="l",col="Blue")
# legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1),col=c("black","red","blue"))
# plot(newdf$Time,newdf$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power",lty=1)
# par(opar)
# dev.off()