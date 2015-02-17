pollutantmean <- function(directory, pollutant, id = 1:332) {
    setwd(directory)
    files_list <- list.files()
    P_Data <- data.frame()
    for (i in id) {
        P_Data <- rbind(P_Data, read.csv(files_list[i]))
    }
    print(mean(P_Data[, pollutant], na.rm=TRUE))
}