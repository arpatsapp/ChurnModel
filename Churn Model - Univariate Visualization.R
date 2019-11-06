
# Total Churn Rate
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = Churn, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Customer Churn") +
  xlab("Churn") +
  ylab("Proportion")

# Gender Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = gender, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Gender") +
  xlab("Gender") +
  ylab("Proportion")


# Senior Citizen Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = SeniorCitizen, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Senior Citizens") +
  xlab("Senior Citizen") +
  ylab("Proportion")

# Partner Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = Partner, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Partner/Marital Status") +
  xlab("Partner") +
  ylab("Proportion")

# Dependents Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = Dependents, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Dependents Status") +
  xlab("Dependents") +
  ylab("Proportion")

# Tenure Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = tenure, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  ggtitle("Distribution of Tenure") +
  xlab("Tenure") +
  ylab("Proportion")

# PhoneService Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = PhoneService, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Phone Service") +
  xlab("Phone Service") +
  ylab("Proportion")

# MultipleLines Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = MultipleLines, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Multiple Lines") +
  xlab("Multiple Lines") +
  ylab("Proportion")

# InternetService Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = InternetService, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  ggtitle("Distribution of Internet Service") +
  xlab("Internet Service Type") +
  ylab("Proportion")

# OnlineSecurity Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = OnlineSecurity, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Online Security Usage") +
  xlab("Online Security Usage") +
  ylab("Proportion")

# OnlineBackup Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = OnlineBackup, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Online Backup Usage") +
  xlab("Online Backup Usage") +
  ylab("Proportion")

# DeviceProtection Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = DeviceProtection, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Device Protection Usage") +
  xlab("Device Protection Usage") +
  ylab("Proportion")

# TechSupport Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = TechSupport, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Tech Support Usage") +
  xlab("Tech Support") +
  ylab("Proportion")

# StreamingTV Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = StreamingTV, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Streaming TV Usage") +
  xlab("Streaming TV Usage") +
  ylab("Proportion")

# StreamingMovies Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = StreamingMovies, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Streaming Movies Usage") +
  xlab("Streaming Movies Usage") +
  ylab("Proportion")

# Contract Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = Contract, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Contract Type") +
  xlab("Contract Type") +
  ylab("Proportion")

# PaperlessBilling Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = PaperlessBilling, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Paperless Billing Option") +
  xlab("Paperless Billing Option") +
  ylab("Proportion")

# PaymentMethod Distribution
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = PaymentMethod, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Payment Method") +
  xlab("Payment Method") +
  ylab("Proportion")

# Distribution of Monthly Charges
ggplot(data = churndata) + 
  geom_bar(mapping = aes(x = MonthlyCharges, y = ..prop.., group = 1), stat = "count") +
  scale_y_continuous(labels = scales::percent_format()) +
  coord_flip() +
  ggtitle("Distribution of Monthly Charges") +
  xlab("Monthly Charges") +
  ylab("Proportion")
