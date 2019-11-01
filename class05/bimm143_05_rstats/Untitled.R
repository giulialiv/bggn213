read.table(file="bimm143_05_rstats/weight_chart.txt",header=TRUE)
weight<-read.table(file="bimm143_05_rstats/weight_chart.txt", header=TRUE)

plot(weight$Age,weight$Weight,typ="o", pch="15", cex= 1.5, lwd="2", ylim =c(2,10),xlab = "Age(Months)",ylab = "Weight(kg)",main = "weight")
#pch changes the point character to be a filled square
#cex=1.5 changes the plot point size to be 1.5x normal size
#lwd=2 changes the line width thickness 
#ylim changes theyaxis limit
#xlab and ylab change the axis labes
#main changes the title on top of the plot.