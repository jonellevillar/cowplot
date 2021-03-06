% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/key_glyph.R
\name{rectangle_key_glyph}
\alias{rectangle_key_glyph}
\alias{circle_key_glyph}
\title{Create customizable legend key glyphs}
\usage{
rectangle_key_glyph(colour = NA, fill = fill, alpha = alpha,
  size = size, linetype = linetype, padding = unit(c(0, 0, 0, 0),
  "pt"), color)

circle_key_glyph(colour = NA, fill = fill, alpha = alpha,
  size = size, linetype = linetype, padding = unit(c(0, 0, 0, 0),
  "pt"), color)
}
\arguments{
\item{colour, color}{Unquoted name of the aesthetic to use for the outline color,
usually \code{colour}, \code{color}, or \code{fill}. Can also be a color constant, e.g. \code{"red"}.}

\item{fill}{Unquoted name of the aesthetic to use for the fill color,
usually \code{colour}, \code{color}, or \code{fill}. Can also be a color constant, e.g. \code{"red"}.}

\item{alpha}{Unquoted name of the aesthetic to use for alpha,
usually \code{alpha}. Can also be a numerical constant, e.g. \code{0.5}.}

\item{size}{Unquoted name of the aesthetic to use for the line thickness of the
outline, usually \code{size}. Can also be a numerical constant, e.g. \code{0.5}.}

\item{linetype}{Unquoted name of the aesthetic to use for the line type of the
outline, usually \code{linetype}. Can also be a constant, e.g. \code{2}.}

\item{padding}{Unit vector with four elements specifying the top, right, bottom,
and left padding from the edges of the legend key to the edges of the key glyph.}
}
\description{
These functions create customizable legend key glyphs, such as filled rectangles or
circles.
}
\examples{
library(ggplot2)

set.seed(1233)
df <- data.frame(
  x = sample(letters[1:2], 10, TRUE),
  y = rnorm(10)
)

ggplot(df, aes(x, y, color = x)) +
  geom_boxplot(
    key_glyph = rectangle_key_glyph(fill = color, padding = margin(3, 3, 3, 3))
  )

ggplot(df, aes(x, y, color = x)) +
  geom_boxplot(
    key_glyph = circle_key_glyph(
      fill = color,
      color = "black", linetype = 3, size = 0.3,
      padding = margin(2, 2, 2, 2)
    )
  )
}
