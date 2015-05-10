# select read of data
library(sqldf)
data <- read.csv.sql("household_power_consumption.txt", sql="select * from file where date = '1/2/2007' or date = '2/2/2007' ", header= TRUE,sep=";")

#open png device
png("plot3.png", height=480, width=480)

# 3 Curves on the same plot
plot(data[,"Sub_metering_1"], type="l", ylim= c(0,40),xlab ="",ylab="Energy sub metering" ,xaxt="n",yaxt="n")
axis(side=1,at=c(1,1500,2880),label=c("Thu","Fri","Sat"))
axis(side=2,at=c(0,10,20,30), label=c("0","10","20","30"))

par(new=TRUE)
plot(data[,"Sub_metering_2"], type="l", ylim=c(0,40),col="red", axes= FALSE ,xlab ="",ylab="")

par(new=TRUE)
plot(data[,"Sub_metering_3"], type="l", ylim=c(0,40),col="blue", axes= FALSE ,xlab ="",ylab="")

# add a legend
legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),lwd=c(2,2,2),col=c("black","red","blue"),cex=0.8)

#close the device
dev.off()


