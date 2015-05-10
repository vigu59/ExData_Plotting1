# read the data
library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", sql="select * from file where date = '1/2/2007' or date = '2/2/2007' ", header= TRUE,sep=";")

png("plot1.png", height=480, width=480)

hist(data[,"Global_active_power"],col="red",main="Global Active Power",xlab="Global Active Power (Kilowatts)", ylim=c(0,1200))

dev.off()


