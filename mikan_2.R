# change to a directory
# setwd("C:/work/Rexe")
# getwd()

# step1. read dataset
mikan_data <- read.csv("mikan2.csv")
# for Mac
# water_data <- read.csv("water2_mac.csv")
head(water_data, 10)

# step2. basic statistics
summary(mikan_data,na.rm = TRUE)
apply(mikan_data,2,sd,na.rm = TRUE)

# step3. regression analysis (OLS)
reg1 <- lm(Demand ~ Price, data = mikan_data)
summary(reg1)

# scatter plot
plot(Demand ~ Price, data = mikan_data)
# approximate line
abline(reg1)