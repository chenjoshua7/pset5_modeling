library(ggplot2)
straight <- function(x) {
    x
}

q_one <- function(x) {
    x^2 - 2*x +2
}

ggplot(data.frame(x = c(-1:3)), aes(x=x)) +
    stat_function(fun = q_one, color = "orange") +
    stat_function(fun = straight, color = "purple") +
    xlab(NULL) + ylab(NULL)
ggsave("quest_one.png")

q_two <- function(x) {
    (5*x^2 - 6*x + 2)/(6*x^2-8*x+3)
}

ggplot(data.frame(x = c(-1:2)), aes(x=x)) +
    stat_function(fun = q_two, color = "orange") +
    stat_function(fun = straight, color = "purple") +
    xlab(NULL) + ylab(NULL)
ggsave("quest_two.png")