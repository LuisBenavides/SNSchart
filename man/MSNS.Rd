% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MultivariateSequentialNormalScores.R
\name{MSNS}
\alias{MSNS}
\title{Multivariate Sequential Normal Scores}
\usage{
MSNS(
  X,
  X.id,
  Y = NULL,
  theta = NULL,
  Ftheta = NULL,
  scoring = "Z",
  alignment = "unadjusted",
  constant = NULL,
  absolute = FALSE,
  chart = "T2",
  chart.par = c(0.005),
  null.dist = "Chi",
  isFixed = FALSE,
  omit.id = NULL,
  auto.omit.alarm = TRUE
)
}
\arguments{
\item{X}{matrix or data.frame. New observations to obtain the normal scores.}

\item{X.id}{vector. The id of each column (variable) of the matrix \code{X}.}

\item{Y}{matrix or data.frame. If \code{Y} is not defined (no previous observation available, \code{NULL}), NS is relative to \code{X}. Default \code{NULL}.}

\item{theta}{vector. Value corresponding with the \code{Ftheta} quantile.}

\item{Ftheta}{vector. Quantile of the data distribution. The values that take are between (0,1).}

\item{scoring}{character string. If "Z" (normal scores) (default). If "Z-SQ" (normal scores squared).}

\item{alignment}{character string. Aligment of the data \code{X} and \code{Y}. Select from
\itemize{
  \item "unadjusted": nothing is sustracte from \code{X} and \code{Y} (default).
  \item "overallmean": overall mean is sustracted from \code{X} and \code{Y}.
  \item "overallmedian": overall median is sustracted from \code{X} and \code{Y}.
  \item "samplemean": mean from corresponding group (\code{X} and \code{Y}) is sustracted from its corresponing vector.
  \item "samplemedian": median from corresponding group (\code{X} and \code{Y}) is sustracted from its corresponing vector.
  \item "referencemean": mean from \code{Y} is subtracted from \code{X} and \code{Y}.
  \item "referencemedian": median from \code{Y} is subtracted from \code{X} and \code{Y}.
  \item "constantvalue": a constant value is subtracted from \code{X} and \code{Y}.
}}

\item{constant}{scalar. Only used when the \code{alignment} is selected "constantvalue". Default \code{NULL}.}

\item{absolute}{logical. If \code{TRUE}, the absolute aligned values are obtained. (Default \code{FALSE})}

\item{chart}{character string. Selected type of chart. One option available: \code{"T2"}.
\describe{
  \item{T2 scheme: }{is \code{c(k)}, where \code{k} comes from \eqn{UCL = mu + k\sigma, LCL = mu - k\sigma.}}
}}

\item{chart.par}{vector. Control limit and other parameters of the selected chart.}

\item{null.dist}{character string. It is the null distribution choose from \code{"Chi"} or \code{"F"}.}

\item{isFixed}{logical. If \code{TRUE} the reference sample does not update, otherwise the reference sample is updated when the batch is in control.}

\item{omit.id}{vector. Elements of the vector are the id which are omitted in the analysis.}

\item{auto.omit.alarm}{logical. Determine if OC signals are added (or not) to reference sample. By default is set to TRUE.}
}
\value{
Multiple output. Select by \code{output$}
\itemize{
  \item \code{coefficients}: list. Two elements: \code{n} the number of observation per group in \code{X} and \code{chart} the selected chart to perform the analysis.
  \item \code{X}: vector. New observations (Monitoring sample) to obtain the SNS.
  \item \code{Z}: vector. SNS of the \code{X} monitoring sample.
  \item \code{T2}: vector. T2 statistic for each of the groups in \code{X}.
  \item \code{X.id}: vector. The id of each column (variable) of the matrix \code{X}.
  \item \code{UCL}: vector. Upper control limit for each group in \code{X}.
}
}
\description{
Transform a matrix \code{X} into SNS using initial observations \code{Y} if available
SNS follow the order of \code{X}.
}
\section{Comments}{

If ties, average ranks are used.
}

\examples{
X = cbind(example91$X1, example91$X2)
X.id = example91$X.id
msns = MSNS(X, X.id)
}
\seealso{
\code{\link{MNS}} for multivariate normal scores
}
