context("SOEN6611 tests for Median function")

test_that("Positive arrays even", {
  a1 <- c(1,2,3,2,4,3,2,4,3,2)
  a2 <- c(1,1)
  a3 <- c(9,9)
  a4 <- c(3,2,1,4,3,2,1,3)
  a5 <- c(1,1,1,1,1,1,1,1)
  expect_that(SoenMedian(a1), equals(median(a1)))
  expect_that(SoenMedian(a2), equals(median(a2)))
  expect_that(SoenMedian(a3), equals(median(a3)))
  expect_that(SoenMedian(a4), equals(median(a4)))
  expect_that(SoenMedian(a5), equals(median(a5)))
})

test_that("Positive arrays odd", {
  b1 <- c(1,3,2,6,5,8,3)
  b2 <- c(1)
  b3 <- c(0)
  b4 <- c(1,1,1)
  b5 <- c(1,5,4,5,4,1,1)
  expect_that(SoenMedian(b1), equals(median(b1)))
  expect_that(SoenMedian(b2), equals(median(b2)))
  expect_that(SoenMedian(b3), equals(median(b3)))
  expect_that(SoenMedian(b4), equals(median(b4)))
  expect_that(SoenMedian(b5), equals(median(b5)))
})

test_that("Negative arrays even", {
  c1 <- c(-1,-4,-2,-5,-4,-3)
  c2 <- c(-1,-1)
  c3 <- c(-9,9)
  c4 <- c(-9,-9)
  c5 <- c(-1,-3,2,-2)
  expect_that(SoenMedian(c1), equals(median(c1)))
  expect_that(SoenMedian(c2), equals(median(c2)))
  expect_that(SoenMedian(c3), equals(median(c3)))
  expect_that(SoenMedian(c4), equals(median(c4)))
  expect_that(SoenMedian(c5), equals(median(c5)))
  
})

test_that("Negative arrays odd", {
  d1 <- c(-1,-4,-3,-5,-6,-32,-7)
  d2 <- c(-1,5,6,3,-4,5,-6)
  d3 <- c(-1)
  d4 <- c(-1,-1,-1)
  d5 <- c(-1,1,-1)
  expect_that(SoenMedian(d1), equals(median(d1)))
  expect_that(SoenMedian(d2), equals(median(d2)))
  expect_that(SoenMedian(d3), equals(median(d3)))
  expect_that(SoenMedian(d4), equals(median(d4)))
  expect_that(SoenMedian(d5), equals(median(d5)))
  
})

test_that("Big arrays", {
  arr <- sample(0:100, 100, replace=TRUE)
  expect_that(SoenMedian(arr), equals(median(arr)))
  
  arr2 <- sample(0:4000, 1000, replace=TRUE)
  expect_that(SoenMedian(arr2), equals(median(arr2)))
})