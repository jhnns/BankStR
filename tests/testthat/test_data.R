context("Data bundled with BankStR package")

test_that("Variable names of the imported dataframes: ", {
  expect_equal(
    names(read_gls("../../data/gls_Umsaetze_DDMMYYYY_bis_DDMMYYYY_KTO1234567890_DDMMYYYY.csv")),
    names(read_consors("../../data/consors_Buchungen_200845694.csv")),
    names(read_sparda("../../data/sparda_umsaetze-1234567-YYYY-MM-DD-HH-MM-SS.csv")),
    names(read_sparkasse("../../data/sparkasse_YYYYMMDD-12345678-umsatz.CSV")),
    names(read_wustenrot("../../data/wustenrot_1234567890_YYYYMMDD_YYYYMMDD.csv")),
    c("DATE", "DESCRIPTION", "AMOUNT")
  )
}
)

test_that("DATE is not NA due to conversion problem: ", {
  expect_false(is.na(read_gls("../../data/gls_Umsaetze_DDMMYYYY_bis_DDMMYYYY_KTO1234567890_DDMMYYYY.csv")[1,1]))
  expect_false(is.na(read_consors("../../data/consors_Buchungen_200845694.csv")[1,1]))
  expect_false(is.na(read_sparda("../../data/sparda_umsaetze-1234567-YYYY-MM-DD-HH-MM-SS.csv")[1,1]))
  expect_false(is.na(read_sparkasse("../../data/sparkasse_YYYYMMDD-12345678-umsatz.CSV")[1,1]))
  expect_false(is.na(read_wustenrot("../../data/wustenrot_1234567890_YYYYMMDD_YYYYMMDD.csv")[1,1])
  )
}
)