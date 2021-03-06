test_that("We can print a tourney bracket - women", {
  f <- system.file('kaggle_data/seed_benchmark_women.csv', package = "kaggleNCAA", mustWork=TRUE)
  dat <- parseBracket(f)
  year = sort(unique(dat$season))[1]
  sim <- simTourney(dat, 1, year, progress=FALSE)
  bracket <- extractBracket(sim)
  res <- printableBracket(bracket, add_seed=FALSE, add_prob=FALSE)
  expect_null(res)
  res <- printableBracket(bracket, add_seed=FALSE, add_prob=TRUE)
  expect_null(res)
  res <- printableBracket(bracket, add_seed=TRUE, add_prob=FALSE)
  expect_null(res)
  res <- printableBracket(bracket, add_seed=TRUE, add_prob=TRUE)
  expect_null(res)
})

test_that("We can print a tourney bracket - men", {
  f <- system.file('kaggle_data/seed_benchmark_men.csv', package = "kaggleNCAA", mustWork=TRUE)
  dat <- parseBracket(f)
  year = sort(unique(dat$season))[1]
  sim <- simTourney(dat, 1, year, progress=FALSE)
  bracket <- extractBracket(sim)
  res <- printableBracket(bracket, add_seed=FALSE, add_prob=FALSE)
  expect_null(res)
  res <- printableBracket(bracket, add_seed=FALSE, add_prob=TRUE)
  expect_null(res)
  res <- printableBracket(bracket, add_seed=TRUE, add_prob=FALSE)
  expect_null(res)
  res <- printableBracket(bracket, add_seed=TRUE, add_prob=TRUE)
  expect_null(res)
})
