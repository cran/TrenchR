% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/energybalance_functions.R
\name{Qconduction_animal}
\alias{Qconduction_animal}
\title{Conductance Assuming Animal Thermal Conductivity is Rate Limiting}
\usage{
Qconduction_animal(T_g, T_b, d, K = 0.5, A, proportion)
}
\arguments{
\item{T_g}{\code{numeric} ground surface temperature (K).}

\item{T_b}{\code{numeric} body temperature (K).}

\item{d}{\code{numeric} mean thickness of the animal skin (surface) in (meters). The function assumes a well mixed interior.}

\item{K}{\code{numeric} thermal conductivity (\ifelse{html}{\out{W K<sup>-1</sup> m<sup>-1</sup>}}{\eqn{W K^-1 m^-1}{ASCII}}). \code{K = 0.5} for naked skin and \code{K = 0.15} for insect cuticle \insertCite{Galushko2005}{TrenchR}. The conductivity of the ground is generally greater than that of animal tissues, so animal thermal conductivity is generally the rate limiting step.}

\item{A}{\code{numeric} surface area (\ifelse{html}{\out{m<sup>2</sup>}}{\eqn{m^2}{ASCII}}).}

\item{proportion}{\code{numeric} proportion of body in contact with the surface (0-1).}
}
\value{
\code{numeric} conductance (W).
}
\description{
The function calculates conductance (W) of an ectothermic animal to its substrate. Method assumes the major resistance to conduction is within surface layers of the animal and that the interior of the animal is equal in temperature to its surface (thermally well mixed) \insertCite{Spotila1992}{TrenchR}.
}
\examples{
  Qconduction_animal(T_g        = 293,
                     T_b        = 303,
                     d          = 10^-6,
                     K          = 0.5,
                     A          = 10^-3,
                     proportion = 0.2)

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
\code{\link{Prandtl_number}()},
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
