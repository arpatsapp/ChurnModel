# Logistic Regression Model

LogTrain <- sample(nrow(churndata), 0.7*nrow(churndata), replace = FALSE)
Log.Train.Set <- churndata[LogTrain,]
Log.Valid.Set <- churndata[-LogTrain,]

LogChurn <- glm(Churn~.,family=binomial(link="logit"),data=Log.Train.Set)
print(summary(LogChurn))

anova(LogChurn, test="Chisq")


Log.Valid.Set$Churn <- as.character(Log.Valid.Set$Churn)
