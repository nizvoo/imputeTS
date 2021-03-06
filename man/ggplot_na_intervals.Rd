% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot_na_intervals.R
\name{ggplot_na_intervals}
\alias{ggplot_na_intervals}
\title{Visualize Distribution of Missing Values (Barplot)}
\usage{
ggplot_na_intervals(
  x,
  number_intervals = grDevices::nclass.Sturges(x),
  interval_size = NULL,
  measure = "percent",
  color_missing = "indianred2",
  color_existing = "steelblue",
  alpha_missing = 0.8,
  alpha_existing = 0.3,
  title = "Missing Values per Interval",
  subtitle = "Amount of NA and non-NA for successive intervals",
  xlab = "Time Lapse (Interval Size: XX)",
  ylab = NULL,
  color_border = "white",
  theme = ggplot2::theme_linedraw()
)
}
\arguments{
\item{x}{Numeric Vector (\code{\link{vector}}) or Time Series (\code{\link{ts}}) object containing NAs}

\item{number_intervals}{Defines the number of bins to be created. Default number of intervals is calculated by \code{\link[grDevices]{nclass.Sturges}}
using Sturges' formula. If the interval_size parameter is set to a value different to NULL
this parameter is ignored.}

\item{interval_size}{Defines how many observations should be in one bin/interval. The required number of
overall bins is afterwards calculated automatically. If used this parameter overwrites the number_intervals parameter.}

\item{measure}{Whether the NA / non-NA ratio should be given as percent or absolute numbers.

\itemize{
\item{"percent" - for percentages}

\item{"count" - for absolute numbers of NAs}
}}

\item{color_missing}{Color for the amount of missing values.}

\item{color_existing}{Color for the amount of existing values.}

\item{alpha_missing}{Alpha (transparency) value for the missing values.}

\item{alpha_existing}{Alpha (transparency) value for the existing values.}

\item{title}{title of the plot}

\item{subtitle}{subtitle of the plot}

\item{xlab}{Label for x axis. For the default value gets automatically
adjusted to the interval size choosen. This behavior can be changed by setting another label.}

\item{ylab}{Label for y axis. For the default of NULL, the axis is automatically set
to either 'Percent' or 'Count' dependent on the settings of parameter \code{measure}.}

\item{color_border}{Color for the small borders between the intervals/bins. Default is 'white'.}

\item{theme}{Theme for ggplot2. Default is \code{\link[ggplot2]{theme_minimal}}}
}
\description{
Visualization of missing values in barplot form. Especially useful for
time series with a lot of observations.
}
\details{
This function visualizes the distribution of missing values within a time series.
In comparison to the \code{\link[imputeTS]{ggplot_na_distribution}} function this is not done by plotting
each observation of the time series separately Instead observations for time intervals
are represented as intervals/bins of multiple values. For these intervals information about the amount of missing values are shown. This has the advantage, that also
for large time series a plot which is easy to overview can be created.
}
\examples{
# Example 1: Visualize the missing values in tsNH4 time series
ggplot_na_intervals(tsNH4)

# Example 2: Add legend to example 1
library("ggplot2")
ggplot_na_intervals(tsNH4) + theme(legend.position = "right")

# Example 3: Visualize the missing values in tsHeating time series
ggplot_na_intervals(tsHeating)

# Example 4: Same as example 1, just written with pipe operator
tsNH4 \%>\% ggplot_na_intervals()
}
\seealso{
\code{\link[imputeTS]{ggplot_na_distribution}},
\code{\link[imputeTS]{ggplot_na_gapsize}}, \code{\link[imputeTS]{ggplot_na_imputations}}
}
\author{
Steffen Moritz
}
