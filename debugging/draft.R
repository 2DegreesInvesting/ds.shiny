source(here::here("debugging", "utils.R"))

times2(2)

n <- times2(6)
dataset <- head(cars, n)
dataset
plot(dataset)
