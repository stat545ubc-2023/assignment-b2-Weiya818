test_that("Test 1: Function can only have continuous numerical x values", {
  expect_error(density_plot(datateachr::cancer_sample, datateachr::cancer_sample$diagnosis, datateachr::cancer_sample$diagnosis, x_axis_name="Diagnosis"))
})

test_that("Test 2: Function only takes four input variable", {
  expect_error(density_plot(datateachr::cancer_sample, datateachr::cancer_sample$radius_mean, datateachr::cancer_sample$diagnosis, datateachr::cancer_sample$diagnosis, x_axis_name="Radius_Mean"))
})

test_that("Test 3: Function can only have categorical fill values", {
  expect_error(density_plot( datateachr::cancer_sample, datateachr::cancer_sample$radius_mean, datateachr::cancer_sample$area_mean, x_axis_name="Radius_Mean"))
})

