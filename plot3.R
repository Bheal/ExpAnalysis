wk1d <- read.table("household_power_consumption.txt", sep=";",header=T)

data <- wk1d[wk1d$Date=='1/2/2007'| wk1d$Date=='2/2/2007',]

data$dt<-paste(data$Date,data$Time)
data$datetime<-strptime(data$dt,"%d/%m/%Y %H:%M:%S")

plot(data$datetime,as.numeric(as.character(data$Sub_metering_1)), type='l', xlab="",ylab="Energy sub metering")
lines(data$datetime,as.numeric(as.character(data$Sub_metering_2)), col="red")
lines(data$datetime,as.numeric(as.character(data$Sub_metering_3)), col="green")
legend("topright",c("Sub metering 1","Sub metering 2","Sub metering 3"), lty=1, col=c("black","red","green"),cex=0.6)

dev.copy(png, file="Plot3.png")