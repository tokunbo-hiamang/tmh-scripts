#Trying this out in R. Verifying Python output.
t="/Users/tokunbohiamang/Documents/github/tmh-scripts/statistics/applied_multivariate_statistical_analysis_problems/wichern_data/T8-4.dat"
raw_data = read.table(t,header=FALSE, skip=0)
colnames(raw_data)=c("jp_morgan", "citibank", "wells_fargo", "royal", "exxon")
fit <- princomp(raw_data, cor=TRUE)
summary(fit)
loadings(fit)
fit$scores
