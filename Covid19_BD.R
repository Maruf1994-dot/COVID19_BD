#library
library(covid19.analytics)

#Data
ag <- covid19.data(case = "aggregated")

#Lets look at the time series data of confirmed cases
time_series_confirmed <- covid19.data(case = "ts-confirmed")
time_series_all <- covid19.data(case = 'ts-ALL')


#report
report.summary(Nentries = 10,
               graphical.output = T)

#Totals per location

tots.per.location(time_series_confirmed, geo.loc = c("US","Bangladesh" ))

#Growth rate

growth.rate(time_series_confirmed, geo.loc = "US")


#We will use the all data for a totals plot

totals.plt(time_series_all, c("Bangladesh"))

#worldmap
live.map(time_series_confirmed)

#SIR Model
generate.SIR.model(time_series_confirmed, "Bangladesh", tot.population = 16940000)
generate.SIR.model(time_series_confirmed, "US", tot.population = 33190000)
