library(lubridate)
x <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
y<- dmy(x$Date)+hms(x$Time)
z <- y>= ymd("2007-02-01") & y<ymd("2007-02-03")
subX <- x[z,]
subY <- y[z]
png("plot1.png")
hist(as.numeric(as.character(subX$Global_a)),col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
