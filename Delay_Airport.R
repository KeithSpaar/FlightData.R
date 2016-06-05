#' Calculate the delay time by airport
#'
#' @param origin State they are leaving from.
#' @param destination State they are going to.
#' @return Estimated delay time based one the state the user is going.
#' @examples
#' Delay_Airport(NY, MI)
#' Delay_Airport(CO)
#' @export
#' 
Delay_Airport <- function(origin, destination = NULL){
  if(is.na(destination)){
    mean(data$DEP_DELAY[which(data$ORGIN == origin),])
  }
  else{
    mean(data$DEP_DELAY[which(data$ORGIN == origin & data$DEST == destination)])
  }
  
}