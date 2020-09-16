setwd("D:\\DATA SCIENCE\\Hypothesis Testing")

##### Normality Test##################

library(readxl)
#library(xlsx)
#library(openxlsx)
#library(WriteXLS)

######## Promotion.xlsx data ###################
#setwd("D:\\DATA SCIENCE\\Hypothesis Testing")
Promotion <- read_excel(choose.files())# Promotion.xlsx
View(Promotion)
#getwd()
attach(Promotion)
colnames(Promotion) <- c("CCard Spent ","Promotion Type","Interest Waiver","Standard Promotion")
View(Promotion)
colnames(Promotion)
# Changing column names
#View(Promotion)
attach(Promotion)

#############Normality test###############

shapiro.test(`Interest Waiver`)
# p-value = 0.2246 >0.05 so p high null fly => It follows normal distribution

shapiro.test(`Standard Promotion`)
# p-value = 0.1916 >0.05 so p high null fly => It follows normal distribution

#############Variance test###############

var.test(`Interest Waiver`, `Standard Promotion`)
# p-value = 0.653 > 0.05 so p high null fly => Equal variances

############2 sample T Test ##################

t.test(`Interest Waiver`,`Standard Promotion`,alternative="two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Test
# alternative = "two.sided" means we are checking for equal and unequal
# means
# null Hypothesis -> Equal means
# Alternate Hypothesis -> Unequal Hypothesis
# p-value = 0.02423 < 0.05 accept alternate Hypothesis 
# unequal means

?t.test
t.test(`Interest Waiver`,`Standard Promotion`,alternative = "greater",var.equal = T)

# alternative = "greater means true difference is greater than 0
# Null Hypothesis -> (Interest Waiver-Standard Promotion) < 0
# Alternative Hypothesis -> (Standard Promotion - Interest Waiver) > 0
# p-value = 0.01211 < 0.05 => p low null go => accept alternate hypothesis
# Interest Waiver better promotion than Standard Promotion


###################Proportional T Test(JohnyTalkers data)##########
library(readxl)
Johnytalkers<-read_excel(file.choose())   # JohnyTalkers.xlsx
View(Johnytalkers) 
attach(Johnytalkers)
table1 <- table(Icecream,Person)
table1
?prop.test
prop.test(x=c(48,152),n=c(480,740),conf.level = 0.95,correct = TRUE,alternative = "two.sided")
# two. sided -> means checking for equal proportions of Adults and children under purchased
# p-value = 1.762e-06 < 0.05 accept alternate hypothesis i.e.
# Unequal proportions 

prop.test(x=c(48,152),n=c(480,740),conf.level = 0.95,correct =  FALSE,alternative = "less")
# p-value = 5.927e-07 < 0.05 accept alternate hypothesis
prop.test(x=c(58,152),n=c(480,740),conf.level = 0.95,correct = FALSE,alternative = "greater")
# Ha -> Proportions of Adults > Proportions of Children
# Ho -> Proportions of Children > Proportions of Adults
# p-value = 0.999 >0.05 accept null hypothesis 
# so proportion of Children > proportion of Adults
# Do not launch the incentive program


#########Chi Square(Bahaman Research)#################

library(readxl)
Bahaman<-read_excel(file.choose()) # Bahaman.xlsx
View(Bahaman)
attach(Bahaman)
table(Country,Defective)
chisq.test(table(Country,Defective))
# p-value = 0.6315 > 0.05  => Accept null hypothesis
# => All countries have equal proportions 

#############Anova (Contract_Renewal Data )##########
library(readxl)
CRD <- read_xlsx(file.choose())   # ContractRenewal_Data(unstacked).xlsx
View(CRD)
Stacked_Data <- stack(CRD)
View(Stacked_Data)
attach(Stacked_Data)

#var.test(CRD$`Supplier A`,CRD$`Supplier B`,CRD$`Supplier C`)

install.packages("car")
library(car)
leveneTest(values,ind,data= Stacked_Data)

Anova_results <- aov(values~ind,data = Stacked_Data)
summary(Anova_results)
# p-value = 0.104 > 0.05 accept null hypothesis 
# All Proportions are equal 


# Customer order form 
# Unstacked data 

cof<-read_excel(file.choose()) # customer_order(unstacked).xlsx
View(cof) # countries are in their own columns; so we need to stack the data 
stacked_cof<-stack(cof)
attach(stacked_cof)
View(stacked_cof)
table(stacked_cof$ind,stacked_cof$values)
chisq.test(table(stacked_cof$ind,stacked_cof$values))

