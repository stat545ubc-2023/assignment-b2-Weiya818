Density Plot Generator
================
Weiya Zhu
2023-11-07

## Density Plot

The AssignmentB2 package provides an efficient way to create a density
plot through the `density_plot` function. It creates a density plot with
alpha=0.5 based on the given inputs, dataset, x, and fill values, using
ggplot2. This package can be used as a visualization tool to represent
the distribution of a continuous numeric variable (x) across multiple
fills(categorical values).

## Installation

You can install the development version of Density Plot with the
following instructions:

``` r
devtools::install_github("stat545ubc-2023/assignment-b2-Weiya818")
```

    ## Downloading GitHub repo stat545ubc-2023/assignment-b2-Weiya818@HEAD

    ## ── R CMD build ─────────────────────────────────────────────────────────────────
    ## * checking for file ‘/private/var/folders/8j/hvsc33bn3yx9j55rcgnwlsfr0000gn/T/RtmpN6OzAB/remotes35c13c0787dc/stat545ubc-2023-assignment-b2-Weiya818-30732a6/DESCRIPTION’ ... OK
    ## * preparing ‘AssignmentB2’:
    ## * checking DESCRIPTION meta-information ... OK
    ## * checking for LF line-endings in source and make files and shell scripts
    ## * checking for empty or unneeded directories
    ## * building ‘AssignmentB2_0.1.0.tar.gz’

    ## Installing package into '/private/var/folders/8j/hvsc33bn3yx9j55rcgnwlsfr0000gn/T/RtmpJD3S90/temp_libpath1dd616a36358'
    ## (as 'lib' is unspecified)

## Example

This is an example showing how to generate the density plot using this
package.

    ```r
    library(AssignmentB2)
    library(datateachr)
    library(ggplot2)
    density_plot( data=cancer_sample, x=cancer_sample$radius_mean, fill=cancer_sample$diagnosis, x_axis_name="radius_mean")
    ```

    ![](README_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

<figure>
<img src="README_files/figure-gfm/unnamed-chunk-2-1.png"
alt="Included the generated file here to show the result in README file" />
<figcaption aria-hidden="true">Included the generated file here to show
the result in README file</figcaption>
</figure>
