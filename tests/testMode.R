context("SOEN6611 tests for Mode function")

test_that("Positive arrays", {
  expect_that(SoenMode(c(1,3,4,2,5,4,5)), equals(c(4,5)))
  expect_that(SoenMode(c(1,4,3,2,5)), equals(c(1,2,3,4,5))) #Fix me
  expect_that(SoenMode(c(1,1,1,2,2,3,4,5,2)), equals(c(1,2)))
  expect_that(SoenMode(c(1,1,1,2,2,3,4,5,2,1)), equals(1))
  expect_that(SoenMode(c(1)), equals(1))
  

})

test_that("Negative arrays", {
  expect_that(SoenMode(c(1,3,-4,2,5,-4,5)), equals(c(-4,5)))
  expect_that(SoenMode(c(-1,-4,-3,-2,-5)), equals(c(-5,-4,-3,-2,-1))) # Fix me
  expect_that(SoenMode(c(-1,1,1,-2,2,3,4,5,2)), equals(c(1,2)))
  expect_that(SoenMode(c(-1,-1,-1,2,2,3,4,5,2,-1)), equals(-1))
  expect_that(SoenMode(c(-1)), equals(-1))
})

test_that("Big arrays", {
  arr <- sample(1:100, 100, replace=TRUE)
  expect_that(SoenMean(arr), is_a('numeric'))
})