% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot_na_gapsize.R
\name{ggplot_na_gapsize}
\alias{ggplot_na_gapsize}
\title{Visualize Distribution of NA gap sizes}
\usage{
ggplot_na_gapsize(
  x,
  limit = 10,
  include_total = T,
  ranked_by = "occurrence",
  title = "Occurrence of gap sizes",
  subtitle = "Gap sizes (NAs in a row) ordered by most common",
  orientation = "vertical",
  xlab = NULL,
  ylab = "Number occurrence",
  legend = TRUE,
  color_occurrence = "indianred",
  color_total = "steelblue",
  label_occurrence = "Number occurrence gapsize",
  label_total = "Resulting NAs for gapsize",
  theme = ggplot2::theme_linedraw()
)
}
\arguments{
\item{x}{Numeric Vector (\code{\link{vector}}) or Time Series
(\code{\link{ts}}) object containing NAs}

\item{limit}{Specifies how many of the most common gap sizes are shown in
the plot.Default is 10. So only the 10 most often occurring gapsizes will
be shown. If more or all present gap sizes should be displayed, the limit needs
to be increased. Since this might add a lot of additional data, having
parameter  \code{orientation}set to 'vertical' avoids overlaps in the axis
labels.}

\item{include_total}{Should the resulting total NA count for a gapsize be
included.If a gapsize of 3 occurs 10 times, this means this gap size makes
up for 30 individual NAs in total. This can be a good indicator of the
overall impact of a gapsize.}

\item{ranked_by}{Should the results be sorted according to number of
occurrence' or 'total resulting NAs' of a gapsize. Total resulting NAs
are calculated by (number occurrence x gap size). A gap of 3 occuring
10 times means 30 total resulting NAs.

\itemize{
\item{"occurrence" - Sorting by 'number of occurrence' of a gap size}

\item{"total" - Sorting by 'total resulting NAs' of a gap size}
}

The default setting is "occurrence".}

\item{title}{Title of the plot}

\item{subtitle}{Subtitle of the plot}

\item{orientation}{Can be either 'vertical' or 'horizontal'. Defines
if the bars are plotted vertically or horizontally. For large amounts
of different gap sizes vertical illustration is favourable (also see
parameter \code{limit}).}

\item{xlab}{Label for x axis}

\item{ylab}{Label for y axis}

\item{legend}{If TRUE a legend is added at the bottom.}

\item{color_occurrence}{Defines the color for the bars of
'number of occurrence'.}

\item{color_total}{Defines the color for the bars of
'total resulting NAs'.}

\item{label_occurrence}{Defines the label assigned to 'number of occurrence'
in the legend.}

\item{label_total}{Defines the label assigned to 'total resulting NAs'
in the legend.}

\item{theme}{Set a theme for ggplot2. Default is
\code{\link[ggplot2]{theme_linedraw}}}
}
\value{
The output is a \code{\link[ggplot2]{ggplot2}} object that can be
further adjusted by using the ggplot syntax
}
\description{
Visualize Distribution of NA gap sizes (NAs in a row) in
a time series
}
\details{
This plotting function can be used to visualize the length of
the NA gaps (NAs in a row) in a time series. It shows a ranking of which
gap sizes occur most often. This ranking can be ordered by the number
occurrence of the gap sizes or by total resulting NAs for this gap size
(occurrence * gap length). A NA-gap of 3 occuring 10 times means 30 total
resulting NAs.

A resulting plot can for example be described like this:
a 2 NA-gap (2 NAs in a row) occurred  27 times,
a 9 NA-gap (9 NAs in a row) occurred  11 times,
a 27 NA-gap (27 NAs in a row) occurred  1 times, ...

It is important to note, that while the parameters of this plotting
function provide ease of use, the resulting plot is basically a ggplot
object. This can be altered to your formatting wishes and requirements
with the  respective ggplot commands/syntax (see also Examples).
}
\examples{
# Example 1: Visualize the top gap sizes in tsNH4
ggplot_na_gapsize(tsNH4)

# Example 2: Visualize the top gap sizes in tsAirgap
ggplot_na_gapsize(tsAirgap)

# Example 3: Same as example 1, just written with pipe operator
tsNH4 \%>\% ggplot_na_gapsize()
}
\seealso{
\code{\link[imputeTS]{ggplot_na_distribution}},
\code{\link[imputeTS]{ggplot_na_intervals}},
\code{\link[imputeTS]{ggplot_na_imputations}}
}
\author{
Steffen Moritz
}
