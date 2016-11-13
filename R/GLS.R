#' Read & clean CSVs from the GLS Gemeinschaftsbank eG
#'
#' @param file A CSV file exported from your GLS online account | Finanzen & Umsätze | Umsatzexport
#'
#' @return A dataframe
#'
#' @examples
#' read_gls('data/gls_Umsaetze_DDMMYYYY_bis_DDMMYYYY_KTO1234567890_DDMMYYYY.csv')

read_gls <- function(file) {
    df <- read.csv2(file = file)

    df <- clean_bank_df(df, variables = c("Wertstellung", "VWZ5", "Betrag"), dateformat = "%d.%m.%Y")

    return(df)
}