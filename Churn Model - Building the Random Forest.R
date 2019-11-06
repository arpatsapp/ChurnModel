# building Random Forest model

# Split into Train and Validation sets 70/30 split
churn.train <- sample(nrow(churndata), 0.7*nrow(churndata), replace = FALSE)
churn.trainset <- churndata[churntrain,]
churn.validset <- churndata[-churntrain,]
# Build the initial model
churnrf1 <- randomForest(Churn ~ ., data=churn.trainset, importance=T)
churnrf1
# Use the initial model to make predictions on the training & validation sets
churn.pred.prob <- predict(churnrf1, churn.validset, type='prob')
churn.pred <- predict(churnrf1, churn.validset)
confusionMatrix(churn.pred, churn.validset$Churn, positive="Yes")

#Plotting ROC Curve
preds <- prediction(churn.pred.prob[,2], churn.validset$Churn)

perform <- performance(preds, measure='tpr', x.measure='fpr')
plot(perform)

# Getting the AUC Value
auc <- performance(preds, measure = "auc")
auc <- auc@y.values[[1]]
auc

# Investigate variable importance in the initial model
importance(churnrf1)
varImpPlot(churnrf1)


mean(churnpredallvars == churntrainset$Churn)
table(churnpredallvars, churntrainset$Churn)
churnpredvalidall <- predict(churnrf1, churnvalidset)
mean(churnpredvalidall == churnvalidset$Churn)
table(churnpredvalidall, churnvalidset$Churn)
confusionMatrix(churnpredvalidall, churnvalidset$Churn, positive='Yes')

# Select the features that seem to have the most effect on the 
#predictions and remove those that do not
churnimpvars <- c('MonthlyCharges', 
                  'tenure',
                  'Contract',
                  'PaymentMethod',
                  'InternetService',
                  'Churn')
# Create new training and validation sets with only the 
# features selected
churntrainimpvars <- churntrainset[churnimpvars]
churnvalidimpvars <- churnvalidset[churnimpvars]
# Build a model using the selected variables
churnrf2 <- randomForest(Churn ~ ., data=churntrainimpvars)
churnrf2
# Use the new model to make predictions on the training 
# and validation sets
# Use the initial model to make predictions on the training & validation sets
churn.pred.prob2 <- predict(churnrf2, churnvalidimpvars, type='prob')
churn.pred2 <- predict(churnrf2, churnvalidimpvars)
confusionMatrix(churn.pred2, churnvalidimpvars$Churn, positive="Yes")

#Plotting ROC Curve
preds2 <- prediction(churn.pred.prob2[,2], churnvalidimpvars$Churn)

perform2 <- performance(preds2, measure='tpr', x.measure='fpr')
plot(perform2)

# Getting the AUC Value
auc2 <- performance(preds2, measure = "auc")
auc2 <- auc2@y.values[[1]]
auc2



plot(churnrf1)

# Using For loop to identify the right mtry for model
a=c()
i=5
for (i in 2:18) {
  model3 <- randomForest(Churn ~ ., data = churn.trainset, ntree = 200, mtry = i, importance = TRUE)
  predValid <- predict(model3, churn.validset, type = "class")
  a[i-2] = mean(predValid == churn.validset$Churn)
}

a

plot(2:17,a)

churnrf.final <- randomForest(Churn ~ ., data = churn.trainset, ntree = 200, 
                             mtry = 3, importance = TRUE)
churnrf.final

churn.pred.prob.fin <- predict(churnrf.final, churn.validset, type='prob')
churn.pred.fin <- predict(churnrf.final, churn.validset)
confusionMatrix(churn.pred.fin, churn.validset$Churn, positive="Yes")

#Plotting ROC Curve
preds.fin <- prediction(churn.pred.prob.fin[,2], churn.validset$Churn)

perform.fin <- performance(preds.fin, measure='tpr', x.measure='fpr')
plot(perform.fin)

# Getting the AUC Value
auc.fin <- performance(preds.fin, measure = "auc")
auc.fin <- auc.fin@y.values[[1]]
auc.fin


