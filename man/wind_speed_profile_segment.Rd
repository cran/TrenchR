% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TempWindProfileFunctions.R
\name{wind_speed_profile_segment}
\alias{wind_speed_profile_segment}
\title{Wind Speed at a Specified Height}
\usage{
wind_speed_profile_segment(u_r, zr, z0, z)
}
\arguments{
\item{u_r}{\code{numeric} a vector of wind speeds (\ifelse{html}{\out{m s<sup>-1</sup>}}{\eqn{m s^-1}{ASCII}}) at the 3 reference heights.}

\item{zr}{\code{numeric} a vector of 3 reference heights (m).}

\item{z0}{\code{numeric} a vector of 3 experimentally determined roughness heights (m).}

\item{z}{\code{numeric} height to scale (m).}
}
\value{
\code{numeric} wind speed (\ifelse{html}{\out{m s<sup>-1</sup>}}{\eqn{m s^-1}{ASCII}}).
}
\description{
The function calculates wind speed (\ifelse{html}{\out{m s<sup>-1</sup>}}{\eqn{m s^-1}{ASCII}}) at a specified height (m). The function estimates a three segment velocity and temperature profile based on user-specified, experimentally determined values for 3 roughness heights and reference heights. Multiple heights are appropriate in heterogenous areas with, for example, a meadow, bushes, and rocks. Implements the MICROSEGMT routine from NicheMapR as described in \insertCite{Kearney2017;textual}{TrenchR}.
}
\examples{
  wind_speed_profile_segment(u_r = c(0.01, 0.025, 0.05), 
                             zr  = c(0.05, 0.25, 0.5), 
                             z0  = c(0.01, 0.15, 0.2), 
                             z   = 0.3)

}
\references{
\insertAllCited{}
}
\seealso{
Other microclimate functions: 
\code{\link{air_temp_profile_neutral}()},
\code{\link{air_temp_profile_segment}()},
\code{\link{air_temp_profile}()},
\code{\link{degree_days}()},
\code{\link{direct_solar_radiation}()},
\code{\link{diurnal_radiation_variation}()},
\code{\link{diurnal_temp_variation_sineexp}()},
\code{\link{diurnal_temp_variation_sinesqrt}()},
\code{\link{diurnal_temp_variation_sine}()},
\code{\link{monthly_solar_radiation}()},
\code{\link{partition_solar_radiation}()},
\code{\link{proportion_diffuse_solar_radiation}()},
\code{\link{solar_radiation}()},
\code{\link{surface_roughness}()},
\code{\link{wind_speed_profile_neutral}()}
}
\concept{microclimate functions}
