

test_that("Spatial Boundaries Download", {
  testthat::skip_on_cran()
  skip_if_no_auth()

  # for some reason travis keeps failing to open the download URLs:
  # https://travis-ci.org/ropensci/rdhs/jobs/637246125#L4141
  testthat::skip_on_travis()

  cli <- new_rand_client()

  # check gc file

   # using the surveyNum
   res <- download_boundaries(surveyNum = 471, countryId = "AF")
   expect_true(res$sdr_subnational_boundaries$ISO[1] == "AF")

   # using the surveyId and no countryID
   res <- download_boundaries(surveyId = "AF2010OTH")
   expect_true(length(res) == 2)
   expect_true(res$sdr_subnational_boundaries2$DHSREGEN[2] == "Northern")

   # using sf
   res <- download_boundaries(surveyNum = 471, countryId = "AF", method = "sf")
   expect_true(res$sdr_subnational_boundaries$ISO[1] == "AF")

})


