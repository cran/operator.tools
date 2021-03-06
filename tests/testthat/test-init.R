library(testthat) 
library(operator.tools)
context("Initialization Tests")

test_that( 'init', {
  expect_true( exists('.Options') )
  expect_true( "operators" %in% names(options()) )
  expect_true(  length(operators()) > 0 %in% names( .Options ) )
})
