## Read in our data using getData.R
source("getData.R")
data <- getData()

## Open png graphics device
png(file="plot3.png")

## Close graphics device
dev.off()