#' density_plot
#'
#' @description The density_plot function creates a density plot wiht alpha=0.5 based on the given inputs, dataset, x, and fill values, using ggplot2.
#' This function can be used as a visualization tool to represent the distribution of a continuous numeric variable (x) across multiple fills(categorical values).
#'
#' @param data The input dataset
#' @param x A continuous numerical variable in the dataset, it is one of the varibale being investigated
#' @param fill A variable in the dataset, it is one of the varibale being investigated
#' @param x_axis_name This is the name of the x-axis given by the user who uses this function
#'
#' @examples
#' density_plot( data=cancer_sample, x=cancer_sample$radius_mean, fill=cancer_sample$diagnosis, x_axis_name="radius_mean")
#'
#' @return A density plot with value of x in x-axis across different fills and denisity as the y-axis
#' @export


density_plot <- function(data, x, fill,x_axis_name) {
  x_val<- x[!is.na(x)]
  if(!is.numeric(x_val)) {
    stop('Please make sure x is a numeric vlaue')
  }
  if (!is.factor(fill) && !is.character(fill)) {
    stop('Make sure fill is a categorical variable!')
  }

  ggplot(data = data, aes(x = x_val)) +
    geom_density(aes(fill = fill), alpha = 0.5) +
    labs(title = "Density Plot", x = x_axis_name, y = "Density") +
    scale_x_log10() +
    theme_minimal()
}

