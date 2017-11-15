## Read in our data using getData.R
source("getData.R")
data <- getData()

## Open png graphics device
png(file="plot4.png")

## Close graphics device
dev.off()