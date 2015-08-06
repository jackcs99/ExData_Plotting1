library(lubridate)
x <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
y<- dmy(x$Date)+hms(x$Time)
z <- y>= ymd("2007-02-01") & y<ymd("2007-02-03")
subX <- x[z,]
subY <- y[z]
png("plot3.png")
plot(subY,as.numeric(as.character(subX$Sub_metering_1)),type="l",ylab="Energy sub metering",xlab="")
lines(subY,as.numeric(as.character(subX$Sub_metering_2)),type="l",col="red")
lines(subY,as.numeric(as.character(subX$Sub_metering_3)),type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
