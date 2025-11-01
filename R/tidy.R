#' read_excel_allsheets
#'
#' @param filename filename dir
#' @param tibble F: tibble, T: dataframe 
#' @return return sheets list
#' @examples
#' read_excel_allsheets("DIR.xlsx")
#' @export
read_excel_allsheets <- function(filename, tibble = FALSE) {
  sheets <- readxl::excel_sheets(filename)
  x <- lapply(sheets, function(X) readxl::read_excel(filename, sheet = X))
  if(!tibble) x <- lapply(x, as.data.frame)
  names(x) <- sheets
  x
}
