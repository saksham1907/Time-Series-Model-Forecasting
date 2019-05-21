

# Read data from excel and install libraries for forecast
library('forecast')
library('tseries')
library(readxl)
library(openxlsx)

# Set working directory and import data from the excel sheet

#While importing data from excel make sure to update the working directory to the path where your file is saved
setwd("C:/Users/saksh/Downloads/ISEN 615 Notes/Project")

#Change the name of the sheet to be imported depending upon the market
mydata =read_excel("Arconic_Market2_Arima.xlsx",sheet="import")


#Use ts() to  convert our data in time series format and plot the demand curve 
sales=ts(mydata$`Demand(in thousands)`,frequency = 12,start=c(2015,1))
sales
plot.ts(sales,main="Demand Curve",xlab="Months",ylab="Demand",type='l',col="red")

#For better understanding of our data let us check various components such as trend, seasonality & irregularities in data.
dec_sales=decompose(sales,"multiplicative")
plot(dec_sales)

#Check the stationarity of series
acf(sales)
pacf(sales)

#Now apply auto arima function to fit arima model on data consdering order of seasonal differencing as 1
Arima_fit=auto.arima(sales,D=1)
Arima_fit

#Forecast the values on the fitted model based on 80% & 95% confience interval
forecast_values=forecast(Arima_fit,h=12)
forecast_values

#Plot the forecasted values on the graph for next one year
forecast_plot=plot(forecast_values)
forecast_plot

#Fit through ARIMA is fine since residuals are within significant limit
par(mfrow=c(1,2))
acf(Arima_fit$residuals)
pacf(Arima_fit$residuals)





