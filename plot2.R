## Read in our data using getData.R
source("getData.R")
data <- getData()

## Open png graphics device
png(file="plot2.png")

## Plot the Global Active Power relative to the day as a line graph
with(data,plot(Date.Time,Global_active_power,ylab="Global Active Power (kilowatts)",xlab="",type="l"))

## Close the graphics device
dev.off()