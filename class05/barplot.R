read.csv(file="bimm143_05_rstats/feature_counts.txt", header = TRUE, sep="\t")
mouse <-read.csv(file="bimm143_05_rstats/feature_counts.txt", header = TRUE, sep="\t")
#or you can use read.delim("bimm143......)
par(mar=c(4,11,4,2))
barplot(mouse$Count, names.arg =mouse$Feature, horiz=TRUE,las=1,main = "Number of features in the mouse GRCm38 genome",xlab="counts", col=rainbow(12))
#playwithcolors

