clean_missing <- function(data, column, method = "mean") {
  checkmate::assert_data_frame(data)

  checkmate::assert_string(column)

  checkmate::assert_choice(
    method,
    c("remove", "mean", "median", "mode")
  )
    if (!(column %in% names(data))) {
    stop("Column does not exist in the data frame.")
    }
  if (method == "remove") {

    data <- data[!is.na(data[[column]]), ]

  }
  if (method == "mean") {

    checkmate::assert_numeric(data[[column]])

    replacement <- mean(
      data[[column]],
      na.rm = TRUE
    )

    data[[column]][is.na(data[[column]])] <- replacement
  }
  if (method == "median") {

    checkmate::assert_numeric(data[[column]])

    replacement <- median(
      data[[column]],
      na.rm = TRUE
    )

    data[[column]][is.na(data[[column]])] <- replacement
  }

  if (method == "mode") {

    values <- na.omit(data[[column]])

    replacement <- names(
      sort(table(values), decreasing = TRUE)
    )[1]

    data[[column]][is.na(data[[column]])] <- replacement
  }

  return(data)
}
