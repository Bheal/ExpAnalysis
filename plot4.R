wk1d <- read.table("household_power_consumption.txt", sep=";",header=T)

data <- wk1d[wk1d$Date=='1/2/2007'| wk1d$Date=='2/2/2007',]

data$dt<-paste(data$Date,data$Time)
data$datetime<-strptime(data$dt,"%d/%m/%Y %H:%M:%S")

par(mfcol=c(2,2))
with(data, {
  plot(data$datetime,as.numeric(as.character(data$Global_active_power)), type='l', xlab="",ylab="Global Active Power(kilowatts)")
  plot(data$datetime,as.numeric(as.character(data$Sub_metering_1)), type='l', xlab="",ylab="Energy sub metering")
  lines(data$datetime,as.numeric(as.character(data$Sub_metering_2)), col="red")
  lines(data$datetime,as.numeric(as.character(data$Sub_metering_3)), col="green")
  plot(data$datetime,as.numeric(as.character(data$Voltage)), type='l', xlab="datetime",ylab="voltage")
  plot(data$datetime,as.numeric(as.character(data$Global_reactive_power)), type='l', xlab="datetime",ylab="Global reactive power")
})
dev.copy(png, file="Plot4.png")