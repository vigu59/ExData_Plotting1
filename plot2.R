# read the data
library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", sql="select * from file where date = '1/2/2007' or date = '2/2/2007' ", header= TRUE,sep=";")

#open png device
png("plot2.png", height=480, width=480)

plot(data[,"Global_active_power"], type="l", xlab="", ylab="Global Active Power" ,xaxt="n")
axis(side=1,at=c(1,1500,2880),label=c("Thu","Fri","Sat"))

dev.off()


