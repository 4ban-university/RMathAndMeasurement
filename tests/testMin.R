expect_that(MinF(c(1,2,3,4,5,6)), equals(1))
expect_that(MinF(c(1,2,3,1,1,1)), equals(1))
expect_that(MinF(c(1,1)), equals(1))
expect_that(MinF(c(1)), equals(1))
expect_that(MinF(c(5,8,6,7,5,6,9,8,6,5,7,4,7,8,9,6)), equals(4))
expect_that(MinF(c(4,2,3,4,5,1)), equals(1))



