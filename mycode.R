install.packages("nycflights13")
library(nycflights13)
library(dplyr)
?flights

colnames(flights)
flights |>
  filter(dep_time > 600 & dep_time < 2000 & abs(arr_delay) < 20) |>
  nrow()

flights |>
  mutate(
    daytime = dep_time > 600 & dep_time < 2000,
    approx_ontime = abs(arr_delay) < 20,
    .keep = "used"
  )

flights |>
  mutate(
    daytime = dep_time > 600 & dep_time < 2000,
    approx_ontime = abs(arr_delay) < 20,
    .keep = "used"
  ) |>
  filter(daytime == TRUE & approx_ontime == TRUE) |>
  nrow()

x <- c(1 / 49 * 49, sqrt(2) ^2)
x

x == c(1,2)

print(x,digits = 16)

near (x,c(1,2))

NA == NA

a <- c(1,2,NA,4)
is.na(a)
sum(is.na(a))
sum(!is.na(a))
