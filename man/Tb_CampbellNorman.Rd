% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/OperativeTemperatureFunctions.R
\name{Tb_CampbellNorman}
\alias{Tb_CampbellNorman}
\title{Operative Environmental Temperature of an Ectotherm based on Campbell and Norman (1988)}
\usage{
Tb_CampbellNorman(
  T_a,
  T_g,
  S,
  alpha_S = 0.7,
  alpha_L = 0.96,
  epsilon = 0.96,
  c_p = 29.3,
  D,
  V
)
}
\arguments{
\item{T_a}{\code{numeric} air temperature (K).}

\item{T_g}{\code{numeric} ground temperature (K).}

\item{S}{\code{numeric} flux density of solar radiation (\ifelse{html}{\out{W m<sup>-2</sup>}}{\eqn{W m^-2}{ASCII}}), combining direct, diffuse, and reflected radiation accounting for view factors.}

\item{alpha_S}{\code{numeric} organismal solar absorptivity (proportion).}

\item{alpha_L}{\code{numeric} organismal thermal absorptivity (proportion); 0.965 for lizards \insertCite{Bartlett1967}{TrenchR}.}

\item{epsilon}{\code{numeric} longwave infrared emissivity of skin (proportion), 0.95 to 1 for most animals \insertCite{Gates1980}{TrenchR}.}

\item{c_p}{\code{numeric} specific heat of air (\ifelse{html}{\out{J mol<sup>-1</sup> K<sup>-1</sup>}}{\eqn{J mol^-1 K^-1}{ASCII}}).}

\item{D}{\code{numeric} characteristic dimension of the animal (m).}

\item{V}{\code{numeric} wind speed (\ifelse{html}{\out{m s<sup>-1</sup>}}{\eqn{m s^-1}{ASCII}}).}
}
\value{
\code{numeric} operative environmental temperature, \code{T_e} (K).
}
\description{
The function estimates body temperatures (K, operative environmental temperature) of an ectotherm using an approximation based on \insertCite{Campbell1998;textual}{TrenchR} and \insertCite{Mitchell1976;textual}{TrenchR}.
}
\details{
Boundary conductance uses a factor of 1.4 to account for increased convection \insertCite{Mitchell1976}{TrenchR}. The function assumes forced conduction.
}
\examples{
Tb_CampbellNorman (T_a     = 303, 
                   T_g     = 303, 
                   S       = 823, 
                   alpha_S = 0.7, 
                   alpha_L = 0.96, 
                   epsilon = 0.96, 
                   c_p     = 29.3, 
                   D       = 0.17, 
                   V       = 1)

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