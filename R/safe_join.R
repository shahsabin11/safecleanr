#' Safely Join Two Data Frame
#' Performs a left join with safety checks for:
#' duplicate keys, missing join columns, and unmatched rows
#'
#'
#' @param df1 First data frame
#' @param df2 Second data frame
#' @param by Column name used for joining (string)
#'
#' @returns A safely joined data frame
#'
#' @examples
#' df1 <- data.frame(id = c(1, 2, 3), name = c("A", "B", "C"))
#' df2 <- data.frame(id = c(1, 2, 4), score = c(90, 85, 70))
#'
#' safe_join(df1, df2, by = "id")
#'
#' @export

safe_join <- function(df1, df2, by) {
  checkmate::assert_data_frame(df1)
  checkmate::assert_data_frame(df2)
  checkmate::assert_string(by)

  if (!(by %in% names(df1))) {
    stop("Join column not found in first data frame.")
  }
  if (!(by %in% names(df2))) {
    stop("Join column not found in second data frame.")
  }
  if (any(duplicated(df1[[by]]))) {
    warning("Duplicate keys found in first data frame.")
  }

  if (any(duplicated(df2[[by]]))) {
    warning("Duplicate keys found in second data frame.")
  }
  unmatched_count <- sum(!(df1[[by]] %in% df2[[by]]))

  if (unmatched_count > 0) {
    warning(paste0(unmatched_count, " row(s) in df1 have no match in df2"))
  }
  result <- dplyr::left_join(df1, df2, by = by)

  return(result)

}
