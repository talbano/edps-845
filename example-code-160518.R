really_long_object_name <- c(1, 2, 3, 4, 5, 6,
  7, 8, 9, 0, 1, 2)

library("equate")

tempdat <- PISA$totals$b1
tempdat[tempdat < 3] <- NA
head(tempdat)
sapply(1:ncol(tempdat), function(j)
  mean(tempdat[, j]))
colMeans(tempdat)
tempsum <- apply(tempdat, 2, sum, na.rm = T)
rowSums(tempdat, na.rm = T)

lapply(PISA$totals, nrow)

# Use tapply to get mean performance
# on a vector of scored item responses
# for each school id
tapply(PISA$students$m033q01,
  PISA$students$schoolid, mean,
  na.rm = T)

apply(PISA$totals$b6, 2, table,
  exclude = NULL)
