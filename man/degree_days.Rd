% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DDFunctions.R
\name{degree_days}
\alias{degree_days}
\title{Degree Days}
\usage{
degree_days(T_min, T_max, LDT = NA, UDT = NA, method = "single.sine")
}
\arguments{
\item{T_min}{\code{numeric} Minimum temperature of the day (C).}

\item{T_max}{\code{numeric} Maximum temperature of the day (C).}

\item{LDT}{\code{numeric} lower developmental threshold (C).}

\item{UDT}{\code{numeric} upper developmental threshold (C).}

\item{method}{\code{character} type of method being used. Current choices: \code{"single.sine"}, \code{"double.sine"}, \code{"single.triangulation"}, and \code{"double.triangulation"}.}
}
\value{
\code{numeric} degree days (C).
}
\description{
The function calculates degree days using the following approximations: single or double sine wave, single or double triangulation \insertCite{ucipm}{TrenchR}. Double approximation methods assume symmetry, such that a day's thermal minimum is equal to that of the previous day. Double sine wave approximation of degree days from \insertCite{Allen1976;textual}{TrenchR}.
}
\examples{
  degree_days(T_min  = 7, 
              T_max  = 14, 
              LDT    = 12, 
              UDT    = 33, 
              method = "single.sine")
  degree_days(T_min  = 7, 
              T_max  = 14, 
              LDT    = 12, 
              UDT    = 33, 
              method = "single.triangulation")

}
\references{
\insertAllCited{}
}
\seealso{
Other microclimate functions: 
\code{\link{air_temp_profile_neutral}()},
\code{\link{air_temp_profile_segment}()},
\code{\link{air_temp_profile}()},
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
\code{\link{wind_speed_profile_neutral}()},
\code{\link{wind_speed_profile_segment}()}
}
\concept{microclimate functions}
