#Trying this out in R. Verifying Python output.
t="/Users/tokunbohiamang/Documents/github/tmh-scripts/statistics/applied_multivariate_statistical_analysis_problems/wichern_data/T8-5.dat"
raw_data = read.table(t,header=FALSE, skip=0)
colnames(raw_data)=c("total_pop", "professional", "over_16", "govt", "home_value")
fit <- princomp(raw_data, cor=TRUE)
summary(fit)
loadings(fit)
eigen(cov(raw_data))
