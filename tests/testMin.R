context("SOEN6611 tests for Minimum function")

test_that("Positive arrays", {
  expect_that(SoenMin(c(1,2,3,4,5,6)), equals(1))
  expect_that(SoenMin(c(1,2,3,1,1,1)), equals(1))
  expect_that(SoenMin(c(1,1)), equals(1))
  expect_that(SoenMin(c(1)), equals(1))
  expect_that(SoenMin(c(4)), equals(4))
  expect_that(SoenMin(c(5,8,6,7,5,6,9,8,6,5,7,4,7,8,9,6)), equals(4))
  expect_that(SoenMin(c(4,2,3,4,5,1)), equals(1))
})

test_that("Negative arrays", {
  expect_that(SoenMin(c(1,-2,3,-4,5,6)), equals(-4))
  expect_that(SoenMin(c(-1,-2,-3,-1,-1,-1)), equals(-3))
  expect_that(SoenMin(c(-1,-1)), equals(-1))
  expect_that(SoenMin(c(-1)), equals(-1))
  expect_that(SoenMin(c(-6)), equals(-6))
  expect_that(SoenMin(c(-5,8,-6,7,5,-6,9,8,-6,5,7,-4,7,8,9,6)), equals(-6))
  expect_that(SoenMin(c(4,-2,-3,4,5,-1)), equals(-3))
})

test_that("Big arrays", {
  arr <- sample(0:100, 100, replace=TRUE)
  expect_that(SoenMin(arr), equals(min(arr)))
})