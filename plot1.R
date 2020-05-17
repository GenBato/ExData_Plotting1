x<-read.table("household_power_consumption.txt",header=T,sep=";")
head(x)
dim(x)
x$Date <- as.Date(x$Date, format="%d/%m/%Y")
y <- x[(x$Date=="2007-02-01") | (x$Date=="2007-02-02"),]
y$Global_active_power <- as.numeric(as.character(y$Global_active_power))
hist(y$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()