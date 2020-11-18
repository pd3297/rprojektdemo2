install.packages("devtools")


install.packages("httr")
install.packages("jsonlite")

library(httr)
library(jsonlite)
library("devtools")

Url <- "https://covid19-api.com/country?name=Poland&format=json"
getUrl <-GET(Url)
UrlText<-content(getUrl,"text")
UrlJson<-fromJSON(UrlText,flatten=TRUE)
UrlDF<-as.data.frame(UrlJson)
View(UrlDF)

