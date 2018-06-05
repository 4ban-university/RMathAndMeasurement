context("SOEN6611 tests for Deviation function")

test_that("Positive arrays", {
  a1 <- c(1,4,5,3,2,5,4)
  a2 <- c(1,1)
  a3 <- c(1)
  a4 <- c(13,5,2,3,1,3,2)
  a5 <- c(1,1,1,1,1)
  expect_that(SoenDeviation(a1), equals(sd(a1)))
  expect_that(SoenDeviation(a2), equals(sd(a2)))
  expect_that(SoenDeviation(a3), equals(sd(a3)))
  expect_that(SoenDeviation(a4), equals(sd(a4)))
  expect_that(SoenDeviation(a5), equals(sd(a5)))
})

test_that("Negative arrays", {
  c1 <- c(1,-4,3,-2,-4)
  c2 <- c(-1)
  c3 <- c(-1,-1)
  c4 <- c(-1,-1,-1,-1)
  c5 <- c(-1,3,-1,4,-1)
  expect_that(SoenDeviation(c1), equals(sd(c1)))
  expect_that(SoenDeviation(c2), equals(sd(c2)))
  expect_that(SoenDeviation(c3), equals(sd(c3)))
  expect_that(SoenDeviation(c4), equals(sd(c4)))
  expect_that(SoenDeviation(c5), equals(sd(c5)))
  
})

test_that("Big arrays", {
  arr <- sample(1:100, 100, replace=TRUE)
  expect_that(SoenDeviation(arr), equals(sd(arr)))
  
  arr2 <- sample(1:4000, 1000, replace=TRUE)
  expect_that(SoenDeviation(arr2), equals(sd(arr2)))
})