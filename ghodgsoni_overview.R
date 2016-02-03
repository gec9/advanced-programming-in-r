setwd("C:/Users/gec9/Google Drive/aaPhD/miersvalley201516")

#dat <- read.table("data/pitfallghodgsoni.txt", header = TRUE)
#write.csv(dat, "data/pitfallghodgsoni.csv", row.names = FALSE)

dat <- read.csv("data/ghodgsoni/pitfallghodgsoni.csv")

plot(dat$datetime, dat$p1)

dat$pitfall_sum <- rowSums(dat[, -1])

plot(dat$datetime, dat$pitfall_sum)

write.csv(dat, "data/ghodgsoni/pitfallghodgsonitotals.csv", row.names = FALSE)

