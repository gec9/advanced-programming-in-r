setwd("C:/Users/gec9/Google Drive/aaPhD/miersvalley201516")

dat <- read.csv("data/smollis/pitfallsmollis.csv")

dat$pitfall_sum <- rowSums(dat[,-1])

write.csv(dat, "data/smollis/pitfallsmollistotals.csv", row.names = FALSE)

plot(dat$datetime, dat$pitfall_sum)
