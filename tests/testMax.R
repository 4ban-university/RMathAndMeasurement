context("SOEN6611 tests Max")

test_that("test min", {
  expect_that(MaxF(c(1,2,3,4,5,6)), equals(6))
  expect_that(MaxF(c(1,2,3,1,1,1)), equals(3))
  expect_that(MaxF(c(5,5,5,5,5,5,5,5,5)), equals(5))
  expect_that(MaxF(c(1,1)), equals(1))
  expect_that(MaxF(c(1)), equals(1))
  expect_that(MaxF(c(5,8,6,7,5,6,9,8,6,5,7,4,7,8,9,6)), equals(9))
  expect_that(MaxF(c(4,2,3,4,5,5)), equals(5))
  expect_that(MaxF(c(4,2,3,4,3,5)), equals(5))
})

# отрицательный массив
# отрицательный массив с одним элементов
