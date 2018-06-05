context("SOEN6611 tests for Maximum function")

test_that("Positive arrays", {
  expect_that(SoenMax(c(1,2,3,4,5,6)), equals(6))
  expect_that(SoenMax(c(1,2,3,1,1,1)), equals(3))
  expect_that(SoenMax(c(5,5,5,5,5,5,5,5,5)), equals(5))
  expect_that(SoenMax(c(1,1)), equals(1))
  expect_that(SoenMax(c(1)), equals(1))
  expect_that(SoenMax(c(5,8,6,7,5,6,9,8,6,5,7,4,7,8,9,6)), equals(9))
  expect_that(SoenMax(c(4,2,3,4,5,5)), equals(5))
  expect_that(SoenMax(c(4,2,3,4,3,5)), equals(5))
})

test_that("Negative arrays", {
  expect_that(SoenMax(c(1,-2,3,-4,5,-6)), equals(5))
  expect_that(SoenMax(c(-1,-2,-3,-1,1,-1)), equals(1))
  expect_that(SoenMax(c(-5,-5,-5,-5,-5,-5,-5,-5,-5)), equals(-5))
  expect_that(SoenMax(c(1,-1)), equals(1))
  expect_that(SoenMax(c(-1)), equals(-1))
  expect_that(SoenMax(c(5,-8,6,-7,5,6,-9,-8,6,5,-7,4,7,-8,-9,6,99)), equals(99))
  expect_that(SoenMax(c(-4,-2,-3,-4,-5,-5)), equals(-2))
  expect_that(SoenMax(c(4,-2,3,-4,3,5)), equals(5))
})

test_that("Big arrays", {
  arr <- sample(1:100, 100, replace=TRUE)
  expect_that(SoenMax(arr), equals(max(arr)))
})