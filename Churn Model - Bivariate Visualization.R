# Call cleaned Dataset
churndata = read.csv("churnclean.csv")

# Total Churn Rate
ggplot(churndata, aes(x=Churn)) + geom_bar()


# Churn Rate by Gender
genderchurnbar <- ggplot(churndata) + 
  aes(x=gender, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn Rate by Gender") +
  labs(y = "Proportion")

genderchurnbar

# Senior Citizen Churn Rate

srchurnbar <- ggplot(churndata) + 
  aes(x=SeniorCitizen, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn Rate for Senior Citizens") +
  labs(y = "Proportion")

srchurnbar

# Marital Status Churn Rate
partnerchurnbar <- ggplot(churndata) + 
  aes(x=Partner, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn Rate by Partner Status") +
  labs(y = "Proportion")

partnerchurnbar

# Churn Rate by Dependents
kidschurnbar <- ggplot(churndata) + 
  aes(x=Dependents, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn Rate by Dependents") +
  labs(y = "Proportion")

kidschurnbar

# Churn rate by Tenure
tenurechurnbar <- ggplot(churndata) + 
  aes(x=Churn, fill = factor(tenure)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn Rate by Tenure Length") +
  labs(y = "Proportion")

tenurechurnbar

# Churn Rate by Phone Service
phonechurnbar <- ggplot(churndata) + 
  aes(x=PhoneService, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Phone Service") +
  labs(y = "Proportion")

phonechurnbar

# Churn Rate by Multiple Lines
multilinechurnbar <- ggplot(churndata) + 
  aes(x=MultipleLines, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Multiple Lines") +
  labs(y = "Proportion")

multilinechurnbar

# Churn Rate by Internet Service
netsvcchurnbar <- ggplot(churndata) + 
  aes(x=Churn, fill = factor(InternetService)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Internet Service Option") +
  labs(y = "Proportion")

netsvcchurnbar

# Churn Rate by Online Security
securitychurnbar <- ggplot(churndata) + 
  aes(x=OnlineSecurity, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Online Security") +
  labs(y = "Proportion")

securitychurnbar

# Churn Rate by Online Backup
backupchurnbar <- ggplot(churndata) + 
  aes(x=OnlineBackup, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Online Backup") +
  labs(y = "Proportion")

backupchurnbar

# Churn Rate by Device Protection
devprotchurnbar <- ggplot(churndata) + 
  aes(x=DeviceProtection, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Device Protection") +
  labs(y = "Proportion")

devprotchurnbar

# Churn Rate by Tech Support
techsupptchurnbar <- ggplot(churndata) + 
  aes(x=TechSupport, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Tech Support") +
  labs(y = "Proportion")

techsupptchurnbar

# Churn Rate by StreamingTV
streamtvchurnbar <- ggplot(churndata) + 
  aes(x=StreamingTV, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Streaming TV") +
  labs(y = "Proportion")

streamtvchurnbar

# Churn Rate by Streaming Movies
streammoviechurnbar <- ggplot(churndata) + 
  aes(x=StreamingMovies, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Streaming Movies") +
  labs(y = "Proportion")

streammoviechurnbar

# Churn Rate by Contract Type
contractchurnbar <- ggplot(churndata) + 
  aes(x=Churn, fill = factor(Contract)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Contract") +
  labs(y = "Proportion", fill = "Contract")

contractchurnbar

# Churn Rate by Paperless Billing
paperlesschurnbar <- ggplot(churndata) + 
  aes(x=PaperlessBilling, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Paperless Billing Option") +
  labs(y = "Proportion", fill="Paperless Billing")

paperlesschurnbar

# Churn Rate by Payment Method
paymethodchurnbar <- ggplot(churndata) + 
  aes(x=Churn, fill = factor(PaymentMethod)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Device Protection") +
  labs(y = "Proportion", fill="Payment Method")

paymethodchurnbar

# Monthly Charges Distribution
MonthlyChargeChurn <- ggplot(churndata) + 
  aes(x=MonthlyCharges, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Monthly Charges") +
  labs(y = "Proportion") +
  coord_flip()

MonthlyChargeChurn

# Payment Method by Paperless Billing
paperlesschurnbar <- ggplot(churndata) + 
  aes(x=PaperlessBilling, fill = factor(PaymentMethod)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Payment Method by Paperless Billing Option") +
  labs(y = "Proportion", fill="Paperless Billing")

paperlesschurnbar

# Churn Rate by Payment Method
paymethodchurnbar <- ggplot(churndata) + 
  aes(x=PaymentMethod, fill = factor(PaperlessBilling)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Device Protection") +
  labs(y = "Proportion", fill="Payment Method")

paymethodchurnbar


# Churn Rate by StreamingTV
streamtvchurnbar <- ggplot(churndata) + 
  aes(x=StreamingTV, fill = factor(StreamingMovies)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Streaming TV") +
  labs(y = "Proportion")

streamtvchurnbar

# Churn Rate by Streaming Movies
streammoviechurnbar <- ggplot(churndata) + 
  aes(x=StreamingMovies, fill = factor(Churn)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Streaming Movies") +
  labs(y = "Proportion")

streammoviechurnbar

# Churn Rate by Payment Method
paymethodchurnbar <- ggplot(churndata) + 
  aes(x=Churn, fill = factor(PaymentMethod)) +
  geom_bar(position = "fill") +
  ggtitle("Distribution of Churn by Payment Method") +
  labs(y = "Proportion", fill="Payment Method")

paymethodchurnbar

# Monthly Charges Distribution
# Bin monthly charges in increments of $5

monthlyhist <- ggplot(churndata, aes(MonthlyCharges, group=Churn, fill=Churn)) +
  geom_histogram(position="dodge", stat="bin", binwidth=5) + 
  ggtitle("Distribution of Monthly Charges in Customer Churn")

monthlyhist




PaperByPayment <- table(churndata$PaperlessBilling, churndata$PaymentMethod)
PaperByPaymentChi2 <- chisq.test(PaperByPayment, correct=FALSE)
PaperByPaymentChi2


StreamByStream <- table(churndata$StreamingTV, churndata$StreamingMovies)
StreamByStreamChi2 <- chisq.test(StreamByStream, correct=FALSE)
StreamByStreamChi2