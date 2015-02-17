complete <- function(directory, id = 1:332) {
    setwd(directory)
    files_list <- list.files()
    P_Data <- data.frame()
    final_output <- c()
    len <- 0
    for (i in id) {
        P_Data <- read.csv(files_list[i])
        good <- complete.cases(P_Data)
        len <- nrow(P_Data[good, ])
        final_output <- rbind(final_output, c(id = i, nobs = len))
    }
    data.frame(final_output)
}