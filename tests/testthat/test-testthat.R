library(datateachr)
library(ggplot2)

test_that("Test 1: Function creates a ggplot with a custom x-axis name", {
  expected_val <- density_plot(cancer_sample, cancer_sample$radius_mean, cancer_sample$diagnosis,"Radius_Mean")
  expect_is(expected_val, "ggplot")
})

test_that("Test 2: Function can only have continuous numerical x values", {
  expect_error(density_plot(cancer_sample, cancer_sample$diagnosis, cancer_sample$diagnosis, x_axis_name="Diagnosis"))
})

test_that("Test 3: Function only takes four input variable", {
  expect_error(density_plot(cancer_sample, cancer_sample$radius_mean, cancer_sample$diagnosis, cancer_sample$diagnosis, x_axis_name="Radius_Mean"))
})

test_that("Test 4: Function can only have categorical fill values", {
  expect_error(density_plot( data=cancer_sample, x=cancer_sample$radius_mean, fill=cancer_sample$area_mean, x_axis_name="Radius_Mean"))
})
