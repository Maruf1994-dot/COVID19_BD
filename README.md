Analysing and Visualising COVID-19 pandemic 

A pneumonia of unknown cause detected in Wuhan, China was first reported to the WHO Country Office in China on 31 December 2019. Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.

To get the latest data on covid 19, we used the covid19.analytics package.

The “covid19.analytics” R package allows users to obtain live* worldwide data from the novel Coronavirus Disease originally reported in 2019, COVID-19.

One of the main goals of this package is to make the most recent data about the COVID-19 pandemic promptly available to researchers and the scientific community.

The “covid19.analytics” package also provides basic analysis tools and functions to investigate these datasets.

Following steps were taken

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
