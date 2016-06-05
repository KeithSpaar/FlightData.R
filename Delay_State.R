#' Calculate the delay time by state and by airport
#'
#' @param origin State they are leaving from.
#' @param destination State they are going to.
#' @return Estimated delay time based one the state the user is going.
#' @examples
#' Delay_State(NY, MI)
#' Delay_State(CO)
#' @export
Delay_State <- function(origin, destination = NULL){
  if(is.na(destination)){
    mean(data$DEP_DELAY[which(data$ORGIN_STATE_ABR == origin),])
  }
  else{
    mean(data$DEP_DELAY[which(data$ORGIN_STATE_ABR == origin & data$DEST_STATE_ABR == destination)])
  }
  
}