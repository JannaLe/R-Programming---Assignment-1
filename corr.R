corr <- function(directory, threshold = 0) {
    a <- complete(directory, 1:332)
    P_Data <- data.frame()
    temp <- numeric (0)
    files_list <- list.files()
    b <- a[a$nobs > threshold, 1]
    for (i in b) {
        P_Data <- read.csv(files_list[i])
        good<- complete.cases(P_Data)
        temp <- c(temp, cor(P_Data[good, "sulfate"], P_Data[good, "nitrate"], use = "complete.obs"))
    }
    setwd("..")
    temp
}
