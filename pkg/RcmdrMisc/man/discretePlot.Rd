\name{discretePlot}
\alias{discretePlot}
\title{
Plot Distribution of Discrete Numeric Variable
}

\description{
Plot the distribution of a discrete numeric variable,
optionally classified by a factor. 
}

\usage{
discretePlot(x, by, scale = c("frequency", "percent"), 
    xlab = deparse(substitute(x)), ylab = scale, main = "",
    xlim=NULL, ylim=NULL, ...)
}

\arguments{
  \item{x}{a numeric variable.}
  \item{by}{optionally a factor (or character or logical variable) by which to classify \code{x}.}
  \item{scale}{either \code{"frequency"} (the default) or \code{"percent"}.}
  \item{xlab}{optional character string to label the horizontal axis.}
  \item{ylab}{optional character string to label the vertical axis.}
  \item{main}{optonal main label for the plot (ignored if the \code{by} argument is specified).}
  \item{xlim, ylim}{two-element numeric vectors specifying the ranges of the x and y axes; 
  if not specified, will be determined from the data; 
  the lower limit of the y-axis should normally be 0 and a warning will be printed if it isn't.}
  \item{...}{other arguments to be passed to \code{\link[graphics:plot.default]{plot}}}.
}

\details{
If the \code{by} argument is specified, then one plot is produced for each
level of \code{by}; these are arranged vertically and all use the same scale
for the horizontal and vertical axes.
}

\value{
Returns \code{NULL} invisibly.
}

\author{
John Fox \email{jfox@mcmaster.ca}
}

\seealso{
\code{\link{Hist}}, \code{link{Dotplot}}.
}

\examples{
if (require(datasets)){
  data(mtcars)
  mtcars$cyl <- factor(mtcars$cyl)
  with(mtcars, {
    discretePlot(carb)
    discretePlot(carb, scale="percent")
    discretePlot(carb, by=cyl)
  })
}
}

\keyword{hplot}
