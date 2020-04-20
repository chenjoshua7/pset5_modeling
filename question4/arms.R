arms_data <- data.frame(matrix(nrow = 100, ncol = 4))
colnames(arms_data)<-c("year","ut","st","ut/st")
arms_data$year <- 1:100

arms_data[1,2:4] <- c(50,20,2.5)

for (i in 2:100) {
    ut <- arms_data[i-1,2]
    st <- arms_data[i-1,3]
    arms_data[i,2] <- .9*ut + st + i - 1
    arms_data[i,3] <- .9*st + .1*ut
}

arms_data$`ut/st` <- arms_data$ut/arms_data$st

write.csv(arms_data, "arms_data.csv")

ggplot(data = arms_data) +
    geom_point(mapping = aes(x = year, y = `ut/st`), color = "brown") +
    geom_line(mapping = aes(x = year, y = `ut/st`), color = "brown") +
    xlab("Year") + ylab("Ratio of U to S")