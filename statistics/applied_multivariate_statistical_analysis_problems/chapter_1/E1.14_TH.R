# Import dat file. 
t="../wichern_data/T1-6.dat"
raw_data = read.table(t,header=FALSE, skip=0)
head(raw_data)
colnames(raw_data)=c("Age", "S1LplusS1R", "S1LminusS1R", "S2LplusS2R", "S2LminusS2R")
head(raw_data)
attach(raw_data)
subset=raw_data[c('S1LplusS1R', 'S2LplusS2R')]
#Now create scatter plot.
plot(S1LplusS1R, S2LplusS2R)
#Now find the summary sta
lapply(subset, mean)
var(subset)
cov(subset)
cor(subset)