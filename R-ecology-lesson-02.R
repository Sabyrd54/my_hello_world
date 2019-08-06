# R-ecology-lesson-02.R
# Source: https://datacarpentry.org/R-ecology-lesson/02-starting-with-data.html

download.file(url="https://ndownloader.figshare.com/files/2292169",
              destfile = "combined.csv")

surveys <- read.csv("combined.csv")

head(surveys)

my_vector <- letters[1:3]
num_vector <- seq(1:3)
str(my_vector)

my_df <- data.frame(num_vector,my_vector)

str(surveys)

dim(surveys)

summary(surveys)

surveys[1,1]

surveys[1,6]

surveys[1:3,7]

surveys[3,]

head_surveys<-surveys[1:6,]

surveys[,-1]

surveys[-c(7:34786),]

surveys[sp]

surveys_200 <- surveys[200, ]

n_rows<-nrow(surveys_200)

surveys_17393 <- surveys[17393,]
nrows<-nrow(surveys_17393)





 