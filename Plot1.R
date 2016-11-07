wk1d <- read.table("household_power_consumption.txt", sep=";",header=T)

data <- wk1d[wk1d$Date=='1/2/2007'| wk1d$Date=='2/2/2007',]


hist(as.numeric(as.character(data$Global_active_power)), col="red", xlab="Global Active Power (kilowatts)", main=paste("Global Active Power"))
dev.copy(png, file="Plot1.png")

