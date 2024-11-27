#Multiple Linear Regression
#Classification algorithm

datamlr = read.csv("D:/DS/winequality-white.csv")
# Look at the first 6 observations
head(datamlr)
# Check the dimension
dim(datamlr)
View(datamlr)

# Fit the multiple linear regression model
wine_quality_model = lm(formula = quality ~ fixed.acidity + volatile.acidity + citric.acid + residual.sugar + chlorides + free.sulfur.dioxide + total.sulfur.dioxide + density + pH + sulphates + alcohol ,data = datamlr)

# Get the model residuals
model_residuals = wine_quality_model$residuals

# Plot the result
hist(model_residuals)

# Plot the residuals
qqnorm(model_residuals)
# Plot the Q-Q line
qqline(model_residuals)

#Multicollinearity assumption check 

# Install and load the ggcorrplot package
install.packages("ggcorrplot")
library(ggcorrplot)

# Remove the Customer Value column
reduced_data <- subset(datamlr,select = -quality)

# Compute correlation at 2 decimal places
corr_matrix = round(cor(reduced_data), 2)

# Compute and show the  result
ggcorrplot(corr_matrix, hc.order = TRUE, type = "lower",
           lab = TRUE)

# build a second model without residual sugar since it is <0.8
wine_quality_model2 = lm(formula = quality ~ fixed.acidity + volatile.acidity + citric.acid + chlorides + free.sulfur.dioxide + total.sulfur.dioxide + density + pH + sulphates + alcohol ,data = datamlr)

#Check which of the models is better
# Anova test
anova(wine_quality_model, wine_quality_model2)
