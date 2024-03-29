% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/constants.R
\name{constants}
\alias{constants}
\alias{specific_heat_h2o}
\alias{latent_heat_vaporization_h2o}
\alias{stefan_boltzmann_constant}
\alias{von_karman_constant}
\title{General Use Constants}
\usage{
specific_heat_h2o(units = "J_kg-1_K-1")

latent_heat_vaporization_h2o(units = "J_kg-1")

stefan_boltzmann_constant(units = "W_m-2_K-4")

von_karman_constant(units = "")
}
\arguments{
\item{units}{\code{character} indicating units \itemize{
  \item{specific_heat_h2o}: \itemize{
    \item{\code{"J_kg-1_K-1"}}: {\ifelse{html}{\out{J kg<sup>-1</sup> K<sup>-1</sup>}}{\eqn{J kg^-1 K^-1}{ASCII}}}
  }
  \item{latent_heat_vaporization_h2o}: \itemize{
    \item{\code{"J_kg-1"}}: {\ifelse{html}{\out{J kg<sup>-1</sup>}}{\eqn{J kg^-1}{ASCII}}}
  }
  \item{stefan_boltzmann_constant}: \itemize{
    \item{\code{"W_m-2_K-4"}}: {\ifelse{html}{\out{W m<sup>-2</sup> K<sup>-4</sup>}}{\eqn{W m^-2 K^-4}{ASCII}}}
    \item{\code{"mW_cm-2_K-4"}}: {\ifelse{html}{\out{mW cm<sup>-2</sup> K<sup>-4</sup>}}{\eqn{mW cm^-2 K^-4}{ASCII}}}
  }
  \item{con_karman_constant}: \itemize{
    \item{\code{""}}: dimensionless
  }
}}
}
\value{
\code{numeric} values in \code{units}.
}
\description{
Basic functions for numerical constants for conversions.
}
\examples{
  specific_heat_h2o()
  latent_heat_vaporization_h2o()
  stefan_boltzmann_constant()

}
