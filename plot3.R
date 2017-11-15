## Read in our data using getData.R
source("getData.R")
data <- getData()

## Open png graphics device
png(file="plot3.png")

## Sub_metering_1 black
plot(data$Date.Time,data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",main="")
## Sub_metering_2 red
lines(data$Date.Time,data$Sub_metering_2,type="l",col="red")
## Sub_metering_3 blue
lines(data$Date.Time,data$Sub_metering_3,type="l",col="blue")
## Legend
legend("topright",col = c("black","red","blue"),lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
## Close graphics device
dev.off()