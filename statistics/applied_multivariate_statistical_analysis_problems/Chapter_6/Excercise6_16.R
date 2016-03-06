#Trying this out in R. Verifying Python output.
t="/Users/tokunbohiamang/Documents/repositories/github/tmh-scripts/tmh-scripts/statistics/applied_multivariate_statistical_analysis_problems/wichern_data/T4-3.dat"
raw_data = read.table(t,header=FALSE, skip=0)
head(raw_data)
colnames(raw_data)=c("x1", "x2", "x3", "x4", "d2")
head(raw_data)
summary(raw_data)
#Box Plot
raw_data_cols=c("x1", "x2", "x3", "x4")
raw_data_subset= raw_data[raw_data_cols]
#Box Plot
boxplot(raw_data_subset)
raw_data_stack=stack(raw_data_subset)
head(raw_data_stack)
raw_data_aov=aov(values~ind, data=raw_data_stack)
summary(raw_data_aov)
TukeyHSD(raw_data_aov)
