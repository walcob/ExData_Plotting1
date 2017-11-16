## Read in our data using getData.R
source("getData.R")
data <- getData()

## Open png graphics device
png(file="plot4.png")

## Set parameters to plot four graphs
## in 2 x 2 orientation
par(mfcol = c(2,2))

## Top left Global Active Power v Date
plot(data$Date.Time,data$Global_active_power,type="l",xlab="",ylab="Global Active Power",main="")
## Bottom left
## sub 1
plot(data$Date.Time,data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",main="")
## sub 2
lines(data$Date.Time,data$Sub_metering_2,col="red")
## sub 3
lines(data$Date.Time,data$Sub_metering_3,col="blue")
## legend
legend("topright",col = c("black","red","blue"),lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
## Top Right
plot(data$Date.Time,data$Voltage,xlab="datetime",ylab="Voltage",main="",type="l")
## Bottom right
plot(data$Date.Time,data$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime",main="")
## Close graphics device
dev.off()