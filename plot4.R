

par(mfcol=c(2,2))
with(data, {
  plot(data$datetime,as.numeric(as.character(data$Global_active_power)), type='l', xlab="",ylab="Global Active Power(kilowatts)")
  plot(data$datetime,as.numeric(as.character(data$Sub_metering_1)), type='l', xlab="",ylab="Energy sub metering")
  lines(data$datetime,as.numeric(as.character(data$Sub_metering_2)), col="red")
  lines(data$datetime,as.numeric(as.character(data$Sub_metering_3)), col="green")
  plot(data$datetime,as.numeric(as.character(data$Voltage)), type='l', xlab="datetime",ylab="voltage")
})