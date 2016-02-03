setwd("C:/Users/gec9/Google Drive/aaPhD/miersvalley201516")

dat <- read.csv("data/nantarcticus/pitfallnantarcticus.csv")

dat$pitfall_sum <- rowSums(dat[,-1])

write.csv(dat, "data/nantarcticus/pitfallnantarcticustotals.csv", row.names = FALSE)

plot(dat$datetime, dat$pitfall_sum)
