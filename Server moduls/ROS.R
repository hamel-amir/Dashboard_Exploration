
ROS2 <- function(data, outcome, perc_maj = 100) {
  
  datnrow <- nrow(data)
  if (nrow(na.omit(data)) < datnrow) {
    stop("Sorry, this dataset has missing value :(")
  }
  if (is.character(outcome)) {
    if (!(outcome %in% colnames(data))) {
      stop(paste("This dataset doesn't have a variable names", outcome))
    }
  } else {
    if (outcome < 1 | outcome > ncol(data)) {
      stop(paste("This dataset doesn't have a variable whose column number is", outcome))
    }
  }
  y <- data[, outcome]
  if (length(table(y)) != 2) {
    stop("Sorry, the outcome is not binary, I can't solve this problem :(")
  }
  if (table(y)[1] == table(y)[2]) {
    stop("Sorry, this dataset has been balanced and there is nothing I can do.")
  }
  if (!inherits(y, "character") & !inherits(y, "factor")) {
    warning("The outcome is a binary variable, but not a factor or character.")
  }
  maj_cl <- names(table(y))[which.max(table(y))]
  maj_ind <- which(y == maj_cl)
  min_ind_ori <- which(y != maj_cl)
  min_ind <- c(min_ind_ori, sample(min_ind_ori, length(maj_ind) * perc_maj/100 - length(min_ind_ori), replace = TRUE))
  newdata <- data[c(min_ind, maj_ind), ]
  return(newdata)
}