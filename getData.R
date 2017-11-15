## This function reads the data and outputs the data frame to be used for the 
## other plotting scripts

getData <- function(){
    data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",dec=".",stringsAsFactors=FALSE)
    ## vector of columns to get rid of
    drop <- c("Date","Time")
    ## Create new column containing both the date and the time together
    dateTime <- paste(data$Date,data$Time)
    ## Suppress warnings about timezones...
    data$Date.Time <- suppressWarnings(strptime(dateTime,format="%d/%m/%Y %T",tz="UTC"))
    ## Remove the Date and Time columns
    data <- data[,!(names(data) %in% drop)]
    
    ## Extract only data from 2007-02-01 and 2007-02-02
    data <- data[data$Date.Time < strptime("2007-02-03",format="%F"),]
    data <- data[data$Date.Time > strptime("2007-02-01",format="%F"),]
    
    return(data)
}