#Scatter Plot Matrix:
  pairs(Cars)
#Correlation Matrix:
  cor(Cars)
#Regression Model and Summary
model.car<-lm(MPG~.,data = Cars)
summary(model.car)
####################################


reg_vol<-lm(MPG~VOL,data = Cars)
summary(reg_vol)

reg_wt<-lm(MPG~WT,data = Cars)
summary(reg_wt)

reg_wt_vol<-lm(MPG~WT+VOL,data = Cars)
summary(reg_wt_vol)






#Multi-colinearity 
car::vif(model.car)

#Diagnostic Plots:
  #Residual Plots, QQ-Plos, Std. Residuals vs Fitted
plot(model.car) 
#Residuals vs Regressors
residualPlots(model.car)
#Added Variable Plots
#avPlots(model.car, id.n=2, id.cex=0.7)
#QQ plots of studentized residuals
qqPlot(model.car)
#Deletion Diagnostics
influenceIndexPlot(model.car) # Index Plots of the influence measures
