# 1 a) b)
getwd()
setwd("/Users/allan/Desktop")

hotdogs = read.table("HotdogData.txt",head = T)

  attach(hotdogs)  
  # head(hotdogs) # to check sample of txt file
  
  boxplot(Sodium ~ Type, xlab = "Type of Hotdog", 
          ylab = "Sodium Content (mg)",
          main = "Sodium Content in the Hotdogs")
  
  # part 1 c)
  fit1 <- lm(Sodium~Type)  
  summary(aov(fit1))
  
###############################
  # 2 a) b)
  getwd()
  setwd("/Users/allan/Desktop")
  
  hotdogs = read.table("HotdogData.txt",head = T)
  
  attach(hotdogs)  
  
  boxplot(Calories ~ Type, xlab = "Type of Hotdog", 
          ylab = "Calorie Content",
          main = "Calorie Content in the Hotdogs")
  
  # part 2 c)
  fit2 = lm(Calories~Type)  
  summary(aov(fit2))
  