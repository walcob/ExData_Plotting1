## Read in our data using getData.R
source("getData.R")
data <- getData()

## Open the png graphics device 480 x 480 px plot1.png
## We don't need to specify the resolution as it defaults to 480 x 480
png(file="plot1.png") 

## Create the histogram of Global Active Power
hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

## Close the graphics device
dev.off()