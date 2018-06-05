context("SOEN6611 tests for Deviation function")

test_that("Positive arrays", {
  a1 <- c(1,4,5,3,2,5,4)
  a2 <- c(1,1)
  a3 <- c(13,5,2,3,21,3,2)
  a4 <- c(1,1,1,1,1)
  expect_that(SoenDeviation(a1), equals(sd(a1)*(sqrt((length(a1)-1)/length(a1)))))
  expect_that(SoenDeviation(a2), equals(sd(a2)*(sqrt((length(a2)-1)/length(a2)))))
  expect_that(SoenDeviation(a3), equals(sd(a3)*(sqrt((length(a3)-1)/length(a3)))))
  expect_that(SoenDeviation(a4), equals(sd(a4)*(sqrt((length(a4)-1)/length(a4)))))
})

test_that("Negative arrays", {
  c1 <- c(1,-4,3,-2,-4)
  c2 <- c(-1,-1)
  c3 <- c(-1,-1,-1,-1)
  c4 <- c(-1,3,-1,4,-1)
  expect_that(SoenDeviation(c1), equals(sd(c1)*(sqrt((length(c1)-1)/length(c1)))))
  expect_that(SoenDeviation(c2), equals(sd(c2)*(sqrt((length(c2)-1)/length(c2)))))
  expect_that(SoenDeviation(c3), equals(sd(c3)*(sqrt((length(c3)-1)/length(c3)))))
  expect_that(SoenDeviation(c4), equals(sd(c4)*(sqrt((length(c4)-1)/length(c4)))))
  
})

test_that("Big arrays", {
  arr <- sample(0:100, 100, replace=TRUE)
  expect_that(SoenDeviation(arr), equals(sd(arr)*(sqrt((length(arr)-1)/length(arr)))))
  
  arr2 <- sample(0:4000, 1000, replace=TRUE)
  expect_that(SoenDeviation(arr2), equals(sd(arr2)*(sqrt((length(arr2)-1)/length(arr2)))))
})