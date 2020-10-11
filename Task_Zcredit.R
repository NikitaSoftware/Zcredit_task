creditData <- read.csv("credit_data_dev.csv")
class(creditData)



g <- ggplot(creditData, mapping = aes(creditData$Status, creditData$Score))
g + geom_point()


g <- ggplot(creditData, mapping = aes(creditData$Status, creditData$is35inSchedule))
g + geom_point()

g <- ggplot(creditData, mapping = aes(creditData$Status, creditData$RepLoansWithT.5days))
g + geom_point()

g <- ggplot(creditData, mapping = aes(creditData$Status, creditData$RepLoansWithT..3days , creditData$Score))
g + geom_point()

g <- ggplot(creditData, mapping = aes(creditData$RepLoansWithT.5days, creditData$Score))
g + geom_point()


plot(creditData$Status, creditData$Score, data = creditData)

#some code from network
hclustfunc <- function(x) hclust(x, method="complete")
distfunc <- function(x) as.dist((1-cor(t(x)))/2)
d <- distfunc(creditData)
fit <- hclustfunc(d)