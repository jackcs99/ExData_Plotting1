library(lubridate)
x <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
y<- dmy(x$Date)+hms(x$Time)
z <- y>= ymd("2007-02-01") & y<ymd("2007-02-03")
subX <- x[z,]
subY <- y[z]
png("plot2.png")
plot(subY,as.numeric(as.character(subX$Global_a)),type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
