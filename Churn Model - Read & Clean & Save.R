# Load data in to R, summarize and look for missing values
churndata = read.csv("WA_Fn-UseC_-Telco-Customer-Churn.csv")
summary(churndata)
names(churndata)

# View rows with missing values
churndata[is.na(churndata$TotalCharges),]
churndata[(is.na=FALSE) & (churndata$tenure = 0),]
churndata[is.na(churndata$TotalCharges) & (churndata$tenure > 0),]


# Remove unncessary variables & observations with missing values 
# The missing values are only for customers with 0 tenure
# who have not had a chance to churn yet
churndata=na.omit(churndata)

#Remove customer ID as it's not important for analysis
churndata=subset(churndata, select= -c(customerID)) 

# Find correlation between numeric variables
cor(churndata$MonthlyCharges, churndata$TotalCharges)

# Remove TotalCharges
churndata=subset(churndata, select= -c(TotalCharges))


churndata<-as.data.frame(lapply(churndata, gsub, pattern = "No internet service", replacement = "No", fixed=TRUE))
churndata<-as.data.frame(lapply(churndata, gsub, pattern = "No phone service", replacement = "No", fixed=TRUE))
churndata$SeniorCitizen <- as.factor(ifelse(grepl(1,churndata$SeniorCitizen),'Yes','No'))

churndata$tenure <- cut(churndata$tenure, 
                        breaks = c(0,12,24,36,48,60,72), 
                        labels = c('Tenure under 12 Months', 
                                   'Tenure 12-24 Months',
                                   'Tenure 24-36 Months', 
                                   'Tenure 36-48 Months', 
                                   'Tenure 48-60 Months',
                                   'Tenure Over 60 Months'))  
churndata$MonthlyCharges <- cut(churndata$MonthlyCharges,
                                breaks = c(0,24,48,72,96,120),
                                labels = c('Monthly Charges - Lowest',
                                           'Monthly Charges - Low',
                                           'Monthly Charges - Average',
                                           'Monthly Charges - High',
                                           'Monhtly Charges - Highest'))

sapply(churndata, class)

#write cleaned Dataset to new xlsx file
write_xlsx(churndata, path='churnclean.xlsx', col_names=TRUE)
write.csv(churndata, file='churncleancsv.csv', row.names=FALSE)



