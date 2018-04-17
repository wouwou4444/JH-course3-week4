#####


urlFile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

destfile <-  "GDP.csv"
setwd("d:/machine-learning/Johns_Hopkins/course3/week4/")
download.file(urlFile, destfile = destfile)

idh2016 <- read.csv((destfile))
View(idh2016)


#####
urlFile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
destfile <-  "GDP.csv"
setwd("d:/machine-learning/Johns_Hopkins/course3/week4/")
download.file(urlFile, destfile = destfile)

GDP <- read.csv((destfile), skip = 4)
View(GDP)

urlFile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"

destfile <-  "country.csv"
download.file(urlFile, destfile = destfile)

country <- read.csv(destfile)
str(country)

df <- merge(GDP, country, by.x = "X", by.y = "CountryCode")
