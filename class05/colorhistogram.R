read.delim("bimm143_05_rstats/male_female_counts.txt", header=TRUE)
mf<-read.delim("bimm143_05_rstats/male_female_counts.txt", header=TRUE)
barplot(mf&Count, names.arg = mf$Sample, las=2, col=c("red","blue","green"))
