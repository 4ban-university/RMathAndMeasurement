expect_that(ModeF(c(1,1,1,1,3,2,4,2)), equals(1))
expect_that(ModeF(c(1,1,1,1,3,2,4,2,2,2)), equals(1 2))
expect_that(ModeF(c(1,1,1)), equals(1))
