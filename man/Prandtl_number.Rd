% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/energybalance_functions.R
\name{Prandtl_number}
\alias{Prandtl_number}
\title{Prandtl Number}
\usage{
Prandtl_number(c_p, mu, K)
}
\arguments{
\item{c_p}{\code{numeric} specific heat at constant pressure (\ifelse{html}{\out{J mol<sup>-1</sup> K<sup>-1</sup>}}{\eqn{J mol^-1 K^-1}{ASCII}}).}

\item{mu}{\code{numeric} dynamic viscosity (\ifelse{html}{\out{mol s<sup>-1</sup> m<sup>-1</sup>}}{\eqn{mol s^-1 m^-1}{ASCII}}).}

\item{K}{\code{numeric} thermal conductivity (\ifelse{html}{\out{W K<sup>-1</sup> m<sup>-1</sup>}}{\eqn{W K^-1 m^-1}{ASCII}}).}
}
\value{
\code{numeric} Prandtl number.
}
\description{
The function estimates the Prandtl Number, which describes the ratio of kinematic viscosity to thermal diffusivity \insertCite{Gates1980}{TrenchR}.
}
\examples{
  Prandtl_number(c_p = 29.3,
                 mu  = 0.00001,
                 K   = 0.5)

}
\references{
\insertAllCited{}
}
\seealso{
Other biophysical models: 
\code{\link{Grashof_number_Gates}()},
\code{\link{Grashof_number}()},
\code{\link{Nusselt_from_Grashof}()},
\code{\link{Nusselt_from_Reynolds}()},
\code{\link{Nusselt_number}()},
\code{\link{Qconduction_animal}()},
\code{\link{Qconduction_substrate}()},
\code{\link{Qconvection}()},
\code{\link{Qemitted_thermal_radiation}()},
\code{\link{Qevaporation}()},
\code{\link{Qmetabolism_from_mass_temp}()},
\code{\link{Qmetabolism_from_mass}()},
\code{\link{Qnet_Gates}()},
\code{\link{Qradiation_absorbed}()},
\code{\link{Qthermal_radiation_absorbed}()},
\code{\link{Reynolds_number}()},
\code{\link{T_sky}()},
\code{\link{Tb_CampbellNorman}()},
\code{\link{Tb_Gates2}()},
\code{\link{Tb_Gates}()},
\code{\link{Tb_butterfly}()},
\code{\link{Tb_grasshopper}()},
\code{\link{Tb_limpetBH}()},
\code{\link{Tb_limpet}()},
\code{\link{Tb_lizard_Fei}()},
\code{\link{Tb_lizard}()},
\code{\link{Tb_mussel}()},
\code{\link{Tb_salamander_humid}()},
\code{\link{Tb_snail}()},
\code{\link{Tbed_mussel}()},
\code{\link{Tsoil}()},
\code{\link{actual_vapor_pressure}()},
\code{\link{boundary_layer_resistance}()},
\code{\link{external_resistance_to_water_vapor_transfer}()},
\code{\link{free_or_forced_convection}()},
\code{\link{heat_transfer_coefficient_approximation}()},
\code{\link{heat_transfer_coefficient_simple}()},
\code{\link{heat_transfer_coefficient}()},
\code{\link{saturation_vapor_pressure}()},
\code{\link{saturation_water_vapor_pressure}()}
}
\concept{biophysical models}
