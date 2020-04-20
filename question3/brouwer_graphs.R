x_stable <- function(x) {
    (10*x)/(1+x^2)
}

straight <- function(x) {
    x
}

ggplot(data.frame(x = c(1:5)), aes(x=x)) +
    stat_function(fun = x_stable, color = "orange") +
    stat_function(fun = straight, color = "purple") +
    xlab(NULL) + ylab(NULL)
ggsave("xbrouwer.png")

y_stable <- function(y) {
  (10*y^2)/(1+y^2)
}

ggplot(data.frame(x = c(1:11)), aes(x=x)) +
  stat_function(fun = y_stable, color = "orange") +
  stat_function(fun = straight, color = "purple") +
  xlab(NULL) + ylab(NULL)
ggsave("ybrouwer.png")
