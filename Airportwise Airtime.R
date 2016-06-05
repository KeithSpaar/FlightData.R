' Calculate the total airtime of all the filghts airport-wise
#'
#' @param Origin Origin Airport
#' @param Destination Destination Airport
#' @retur Average of the total airtime for the flight data
#' @examples
#' 
#' @export
Avg_time_state <- function(origin , Destination = NULL )
  if (Destination = NULL)
  {
    return mean(Flights[which(flights$ORIGIN == origin), ]$AIRTIME)
  } 
  return mean(Flights[which(flights$ORIGIN == origin & flights$DEST == destination), ]$AIRTIME)