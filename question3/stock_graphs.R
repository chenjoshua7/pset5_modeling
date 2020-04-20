library(ggplot2)
library(reshape2)

data <- data.frame(matrix(nrow = 100, ncol = 3))
data[,1] <- 1:100
data[1,2:3] <- 1

colnames(data)<- c("t","x", "y")

for (i in 2:100) {
    z <- data[i-1,2]
    data[i,2] <- (10*z)/(1+z^2)
}

for (i in 2:100) {
    z <- data[i-1,3]
    data[i,3] <- (10*z^2)/(1+z^2)
}

write.csv(data, file ="stock_data.csv")

ggplot(data = data) +
    geom_point(mapping = aes(x = t, y = x), color = "blue") +
    geom_line(mapping = aes(x = t, y = x), color = "blue") +
    ggtitle("Stock X Over Time") +
    xlab("Time") + ylab(NULL) +
    theme(plot.title = element_text(hjust = 0.5))
ggsave("stockx.png")

ggplot(data = data) +
    geom_point(mapping = aes(x = t, y = y), color = "red") +
    geom_line(mapping = aes(x = t, y = y), color = "red") +
    ggtitle("Stock Y Over Time") +
    xlab("Time") + ylab(NULL) +
    theme(plot.title = element_text(hjust = 0.5))
ggsave("stocky.png")