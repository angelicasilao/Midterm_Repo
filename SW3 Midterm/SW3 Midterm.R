dotosot <- read.csv ("midetrmseatwork_data.csv")
dotosot


#TASK3
MeanFunction <- function(dotosot, data, data1){
  y<- 0
  for(row in 20:70){
    y[row] <- ifelse(dotosot[row,1], dotosot[row,1],NA)
}
  mean(y,na.rm = TRUE)
  }
MeanFunction(dotosot, 20, 70)

#TASK1
value1 <- function (data,row,col){
  data [row,col]
}
value1(dotosot, 70,3)

#TASK2
value2 <- function(dotosot,col){
  sum(is.na(dotosot[,col]))
}
value2(dotosot,"Ozone")

