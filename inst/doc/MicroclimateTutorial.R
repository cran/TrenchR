## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------

# Load TrenchR package

  library(TrenchR)


## -----------------------------------------------------------------------------

day_of_year(day    = "2017-04-22", 
            format = "%Y-%m-%d")


## ---- fig.height = 3, fig.width = 4-------------------------------------------

plot(x    = 1:365, 
     y    = dec_angle(1:365), 
     type = "l", 
     xlab = "day of year", 
     ylab = "declination angle (radian)")


## ---- fig.height = 3, fig.width = 6-------------------------------------------

zenith <- zenith_angle(hour = 1:24, 
                       doy  = 200, 
                       lat  = 47.61, 
                       lon  = -122.33)

plot(x    = 1:24, 
     y    = zenith, 
     type = "l", 
     ylab = "zenith angle (°)", 
     xlab = "hour")

zenith <- zenith_angle(hour = 1:24, 
                       doy  = 1, 
                       lat  = 47.61, 
                       lon  = -122.33)  
points(x    = 1:24, 
       y    = zenith, 
       type = "l", 
       lty  = "dotted")

zenith <- zenith_angle(hour = 1:24, 
                       doy  = 100, 
                       lat  = 47.61, 
                       lon  = -122.33)
points(x    = 1:24, 
       y    = zenith, 
       type = "l", 
       lty  = "dotdash")
  
zenith <- zenith_angle(hour = 1:24, 
                       doy  = 300, 
                       lat  = 47.61, 
                       lon  = -122.33)
points(x    = 1:24, 
       y    = zenith, 
       type = "l", 
       lty  = "dashed")

legend(x      = "bottomleft", 
       title  = "day of year", 
       legend = c(1, 100, 200, 300), 
       lty    = c("dotted", "dotdash", "solid", "dashed"))


## ---- fig.height = 3, fig.width = 6-------------------------------------------

zenith <- zenith_angle(doy  = 1:365, 
                       hour = 12, 
                       lat  = 60, 
                       lon  = -122.33)

plot(x    = 1:365, 
     y    = zenith, 
     type = "l", 
     ylim = range(0,90), 
     ylab = "zenith angle (°)", 
     xlab = "day of year")

zenith <- zenith_angle(doy  = 1:365, 
                       hour = 12, 
                       lat  = 40, 
                       lon  = -122.33)
points(x    = 1:365, 
       y    = zenith, 
       type = "l", 
       lty  = "dotted")

zenith <- zenith_angle(doy  = 1:365, 
                       hour = 12, 
                       lat  = 20, 
                       lon  = -122.33)

points(x    = 1:365, 
       y    = zenith, 
       type = "l", 
       lty  = "dotdash")

zenith <- zenith_angle(doy  = 1:365, 
                       hour = 12, 
                       lat  = 0, 
                       lon  = -122.33)

points(x    = 1:365, 
       y    = zenith, 
       type = "l", 
       lty  = "dashed")

legend(x      = "topleft", 
       title  = "latitude (°)", 
       legend = c(0, 20, 40, 60), 
       lty    = c("dashed", "dotdash", "dotted", "solid"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

plot(x    = 1:365, 
     y    = solar_noon(lon = 150, doy = 1:365), 
     type = "l", 
     ylim = c(11.3,12.7), 
     ylab = "time of solar noon (hour)", 
     xlab = "day of year")

points(x    = 1:365, 
       y    = solar_noon(lon = 155, doy = 1:365), 
       type = "l", 
       lty  = "dotted")

points(x    = 1:365, 
       y    = solar_noon(lon = 145, doy = 1:365), 
       type = "l", 
       lty  = "dashed")

abline(a = 12,
       b = 0)

legend(x      = "topright", 
       title  = "longitude (°)", 
       legend = c(145, 150, 155), 
       lty    = c("dashed", "solid", "dotted"))


## ---- fig.height = 3, fig.width = 6-------------------------------------------

az <- unlist(lapply(5:18, 
                    FUN = azimuth_angle, 
                    doy = 173, 
                    lat = 47.61, 
                    lon = -122.33))

plot(x    = 5:18, 
     y    = az, 
     type = "l", 
     xlab = "hour", 
     ylab = "azimuth angle (°)")

az <- unlist(lapply(5:18, 
                    FUN = azimuth_angle, 
                    doy = 356, 
                    lat = 47.61, 
                    lon = -122.33))

points(x    = 5:18, 
       y    = az, 
       type = "l",
       lty  = "dashed")

az <- unlist(lapply(5:18, 
                    FUN = azimuth_angle, 
                    doy = 266, 
                    lat = 47.61, 
                    lon = -122.33))

points(x    = 5:18, 
       y    = az, 
       type = "l",
       lty  = "dotted")

az <- unlist(lapply(5:18, 
                    FUN = azimuth_angle, 
                    doy = 228, 
                    lat = 47.61, 
                    lon = -122.33))

points(x    = 5:18, 
       y    = az, 
       type = "l",
       lty  = "dotdash")

legend(x      = "topleft", 
       title  = "day of year", 
       legend = c(173, 228, 266, 356), 
       lty    = c("solid", "dotdash", "dotted", "dashed"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

az <- unlist(lapply(1:365, 
                    FUN = azimuth_angle, 
                    hour = 12, 
                    lat = 47.61, 
                    lon = -122.33))

plot(x    = 1:365, 
     y    = az, 
     type = "l", 
     xlab = "day of year", 
     ylab = "azimuth angle (°)", ylim=c(0,120))

az <- unlist(lapply(1:365, 
                    FUN = azimuth_angle, 
                    hour = 9, 
                    lat = 47.61, 
                    lon = -122.33))

points(x    = 1:365, 
       y    = az, 
       type = "l",
       lty  = "dashed")

az <- unlist(lapply(1:365, 
                    FUN = azimuth_angle, 
                    hour = 6, 
                    lat = 47.61, 
                    lon = -122.33))

points(x    = 1:365, 
       y    = az, 
       type = "l",
       lty  = "dotted")

legend(x      = "topright", 
       title  = "hour", 
       legend = c(6, 9, 12), 
       lty    = c("dotted", "dashed", "solid"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

plot(x    = 1:365,  
     y    = daylength(lat = 10, doy = 1:365), 
     type = "l", 
     ylim = c(8, 22), 
     xlab = "day of year",
     ylab = "day length (hour)")

points(x    = 1:365,  
       y    = daylength(lat = 35, doy = 1:365),  
       type = "l",  
       lty  = "dashed")

points(x    = 1:365, 
       y    = daylength(lat = 60, doy = 1:365),  
       type = "l",  
       lty   = "dotted")

legend(x      = "topright", 
       title  = "latitude (°)", 
       legend = c(10, 35, 60), 
       lty    = c("solid", "dashed", "dotted"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

plot(x    = 1:4000, 
     y    = airpressure_from_elev(elev = 1:4000), 
     type = "l", 
     xlab = "elevation (m)", 
     ylab = "air pressure (kPa)")


## ---- fig.height = 3, fig.width = 6-------------------------------------------

oldpar<-par()

par(mar=c(5, 5, 3, 2))

zen <- unlist(lapply(1:24, 
                     FUN = zenith_angle, 
                     doy = 200, 
                     lat = 47.61, 
                     lon = -122.33))

zen <- zen * 2 * pi / 360

rd <- lapply(zen, 
             FUN  = solar_radiation, 
             doy  = 200, 
             tau  = 0.6, 
             elev = 1500, 
             rho  = 0.7)

rd <- matrix(unlist(rd), 
             nrow  = 3, 
             byrow = FALSE)

plot(x    = 1:24, 
     y    = rd[1,], 
     type = "l", 
     xlab = "hour", 
     ylab = expression(radiation ~ (W/m^{2})), 
     ylim = c(0, 800))

points(x    = 1:24, 
       y    = rd[2,], 
       type = "l", 
       lty = "dotted")

points(x    = 1:24, 
       y    = rd[3,], 
       type = "l", 
       lty  = "dashed")

legend(x      = "topright", 
       title  = "solar radiation flux", 
       legend = c("direct", "diffuse", "reflected"), 
       lty    = c("solid", "dotted", "dashed"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

par(mar = c(5, 5, 3, 2))

psi.seq <- seq(from = 0, 
               to   = 90, 
               by   = 5)

rd <- lapply(psi.seq * 2 * pi / 360, 
             FUN  = solar_radiation, 
             doy  = 200, 
             tau  = 0.75, 
             elev = 1500, 
             rho  = 0.7)

rd <- matrix(unlist(rd), 
             nrow  = 3, 
             byrow = FALSE)

plot(x    = psi.seq, 
     y    = rd[1,], 
     type = "l", 
     xlab = "zenith angle (°)", 
     ylab = expression(radiation ~ (W/m^{2})), 
     ylim = c(0, 1200))

points(x    = psi.seq, 
       y    = rd[2,], 
       type = "l", 
       lty = "dotted")

points(x    = psi.seq, 
       y    = rd[3,], 
       type = "l", 
       lty  = "dashed")

legend(x      = "topright", 
       title  = "solar radiation flux", 
       legend = c("direct", "diffuse", "reflected"), 
       lty    = c("solid", "dotted", "dashed"))


## ---- fig.height = 3, fig.width = 6-------------------------------------------

par(mar = c(5, 5, 3, 2))

r.seq <- lapply(seq(4, 20), 
                FUN    = direct_solar_radiation, 
                lat    = 43.57,
                doy    = 112,
                elev   = 866,
                t0     = 12, 
                method = "Campbell 1977")

r.seq <- unlist(r.seq)

plot(x    = seq(4, 20), 
     y    = r.seq, 
     type = "l", 
     xlab = "hour", 
     ylab = expression(radiation ~ (W/m^{2})))

r.seq <- lapply(seq(4, 20), 
                FUN    = direct_solar_radiation, 
                lat    = 43.57,
                doy    = 112,
                elev   = 866,
                t0     = 12, 
                method = "Gates 1962")

points(x    = seq(4, 20), 
       y    = r.seq,
       type = "l", 
       lty  = "dashed")

legend(x      = "topright", 
       title  = "Radiation algorithm", 
       legend = c("Campbell 1977", "Gates 1962"), 
       lty    = c("solid", "dashed"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

par(mar = c(5, 5, 3, 2))

r.seq <- lapply(seq(1, 365, 31), 
                FUN  = monthly_solar_radiation, 
                lat  = 43.57,
                lon  = -116.22,
                elev = 866,
                T    = 20,
                hp   = 15,
                P    = 15)

r.seq <- unlist(r.seq)

plot(x    = seq(1, 365, 31), 
     y    = r.seq, 
     type = "l", 
     xlab = "day of year", 
     ylab = expression(radiation ~ (W/m^{2})))


## ---- fig.height = 3, fig.width = 6-------------------------------------------

par(mar=c(5, 5, 3, 2))

r.seq <- lapply(seq(0, 1, 0.1), 
                FUN      = partition_solar_radiation, 
                method   = "Erbs", 
                lat      = 40, 
                sol.elev = 60)

plot(x    = seq(0, 1, 0.1), 
     y    = r.seq, 
     type = "l", 
     xlab = expression("clearness index" ~ k[t]), 
     ylab = "diffuse fraction", 
     ylim = c(0, 1))

r.seq <- lapply(seq(0, 1, 0.1), 
                FUN      = partition_solar_radiation, 
                method   = "Liu_Jordan", 
                lat      = 40, 
                sol.elev = 60)

points(x    = seq(0, 1, 0.1), 
       y    = r.seq, 
       type = "l",
       lty  = "dashed")

r.seq <- lapply(seq(0, 1, 0.1), 
                FUN      = partition_solar_radiation, 
                method   = "Orgill_Hollands", 
                lat      = 40, 
                sol.elev = 60)

points(x    = seq(0, 1, 0.1), 
       y    = r.seq, 
       type = "l",
       lty  = "dotted")

r.seq <- lapply(seq(0, 1, 0.1), 
                FUN      = partition_solar_radiation, 
                method   = "Olyphant", 
                lat      = 40, 
                sol.elev = 60)

points(x    = seq(0, 1, 0.1), 
       y    = r.seq, 
       type = "l",
       lty  = "dotdash")

r.seq <- lapply(seq(0, 1, 0.1), 
                FUN      = partition_solar_radiation, 
                method   = "Reindl-1", 
                lat      = 40, 
                sol.elev = 60)

points(x    = seq(0, 1, 0.1), 
       y    = r.seq, 
       type = "l",
       lty  = "longdash")

r.seq <- lapply(seq(0, 1, 0.1), 
                FUN      = partition_solar_radiation, 
                method   = "Reindl-2", 
                lat      = 40, 
                sol.elev = 60)

points(x    = seq(0, 1, 0.1), 
       y    = r.seq, 
       type = "l",
       lty  = "longdash")

r.seq <- lapply(seq(0, 1, 0.1), 
                FUN      = partition_solar_radiation, 
                method   = "Lam_Li", 
                lat      = 40, 
                sol.elev = 60)

points(x    = seq(0, 1, 0.1), 
       y    = r.seq, 
       type = "l",
       lty  = "twodash")

legend(x      = "topright", 
       title  = "Partitioning method", 
       legend = c("Erbs", "Liu_Jordan", "Orgill_Hollands", "Olyphant", "Reindl-1", "Reindl-2", "Lam_Li"), 
       lty    = c("solid", "dashed", "dotted", "dotdash", "longdash", "longdash", "twodash"))


## ---- fig.height = 3, fig.width = 6-------------------------------------------

par(mar = c(5, 5, 3, 2))
r.seq <- lapply(seq(20, 85), 
                FUN = proportion_diffuse_solar_radiation, 
                p_a = 86.1, 
                rho = 0.25)

plot(x    = seq(20,85), 
     y    = r.seq,
     type = "l", 
     xlab = "zenith angle (°)", 
     ylab = "diffuse fraction")

r.seq <- lapply(seq(20, 85), 
                FUN = proportion_diffuse_solar_radiation, 
                p_a = 96.1, 
                rho = 0.25)

points(x    = seq(20,85), 
       y    = r.seq, 
       type = "l", 
       lty  = "dashed")

r.seq <- lapply(seq(20, 85), 
                FUN = proportion_diffuse_solar_radiation, 
                p_a = 76.1, 
                rho = 0.25)

points(x    = seq(20,85), 
       y    = r.seq, 
       type = "l", 
       lty = "dotted")


## ---- fig.height = 3, fig.width = 4-------------------------------------------

u_r <- c(0.01, 0.025, 0.05, 0.1, 0.2)
zr  <- c(0.1, 0.25, 0.5, 0.75, 1)

surface_roughness(u_r = u_r, 
                  zr  = zr)


## ---- fig.height = 3, fig.width = 4-------------------------------------------

zs <- seq(0, 2, 0.1) 

us <- wind_speed_profile_neutral(u_r = 1, 
                                 zr  = 2, 
                                 z0  = 0.2,
                                 z   = zs)

plot(x    = us,
     y    = zs, 
     type = "l", 
     xlab = "wind speed, u (m/s)", 
     ylab = "height, z (m)")

points(x    = wind_speed_profile_neutral(u_r = 0.5,
                                         zr  = 2, 
                                         z0  = 0.2, 
                                         z   = zs), 
       y    = zs, 
       type = "l", 
       lty  = "dashed")

points(x    = wind_speed_profile_neutral(u_r = 0.25, 
                                         zr  = 2, 
                                         z0  = 0.2, 
                                         z   = zs), 
       y    = zs, 
       type = "l", 
       lty  = "dotted")

legend(x      = "bottomright", 
       title  = "wind speed at 2m", 
       legend = c(0.25, 5, 1), 
       lty    = c("dotted", "dashed", "solid"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

z.seq <- seq(0, 2, by = 0.1)
t.seq <- air_temp_profile_neutral(T_r = 20, 
                                  zr  = 1, 
                                  z0  = 0.02, 
                                  z   = z.seq, 
                                  T_s = 25)

plot(x    = t.seq, 
     y    = z.seq, 
     type = "l", 
     xlab = "Temperature (°C)", 
     ylab = "z (height above ground in m)")

t.seq <- air_temp_profile_neutral(T_r = 20, 
                                  zr  = 1, 
                                  z0  = 0.05, 
                                  z   = z.seq, 
                                  T_s = 25)

points(x    = t.seq, 
       y    = z.seq, 
       type = "l", 
       lty  = "dotted")

t.seq <- air_temp_profile_neutral(T_r = 20, 
                                  zr  = 1, 
                                  z0  = 0.08, 
                                  z   = z.seq, 
                                  T_s = 25)
points(x    = t.seq, 
       y    = z.seq, 
       type = "l", 
       lty  = "dashed")

legend(x      = "topright", 
       title  = "surface roughness", 
       legend = c(0.02, 0.05, 0.08), 
       lty    = c("solid", "dotted", "dashed"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

z.seq <- seq(0, 2, by = 0.1)

t.seq <- air_temp_profile(T_r = 20, 
                          u_r = 0.5, 
                          zr  = 2, 
                          z0  = 0.02, 
                          z   = z.seq, 
                          T_s = 25)

plot(x    = t.seq, 
     y    = z.seq, 
     type = "l", 
     xlab = "Temperature (°C)", 
     ylab = "z (height above ground in m)")

t.seq <- air_temp_profile(T_r = 20, 
                          u_r = 0.5, 
                          zr  = 2, 
                          z0  = 0.05, 
                          z   = z.seq, 
                          T_s = 25)

points(x    = t.seq, 
       y    = z.seq, 
       type = "l", 
       lty  = "dotted")

t.seq <- air_temp_profile(T_r = 20, 
                          u_r = 0.5, 
                          zr  = 2, 
                          z0  = 0.08, 
                          z   = z.seq, 
                          T_s = 25)

points(t.seq, 
       z.seq, 
       type = "l", 
       lty = "dashed")

legend(x      = "topright", 
       title  = "surface roughness", 
       legend = c(0.02, 0.05, 0.08), 
       lty    = c("solid", "dotted", "dashed"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

z.seq <- seq(0, 2, by = 0.1)
t.seq <- lapply(z.seq, 
                FUN = air_temp_profile_segment, 
                T_r = c(25, 22, 20),
                u_r = c(0.01, 0.025, 0.05), 
                zr  = c(0.05, 0.25, 0.5), 
                z0  = c(0.01, 0.05, 0.1), 
                T_s = 27)

plot(x    = t.seq, 
     y    = z.seq, 
     type = "l",  
     xlab = "Temperature (°C)",  
     ylab = "z (height above ground in m)")

points(x = c(27, 25, 22, 20),
       y = c(0, 0.05, 0.25, 0.5))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

z.seq <- seq(0, 2, by = 0.1)
u.seq <- lapply(z.seq, 
                FUN = wind_speed_profile_segment, 
                u_r = c(0.01, 0.025, 0.05), 
                zr  = c(0.05, 0.25, 0.5),
                z0  = c(0.01, 0.05, 0.1))

plot(x    = u.seq, 
     y    = z.seq, 
     type = "l", 
     xlab = "Wind speed (m/s)", 
     ylab = "z (height above ground in m)",
     xlim=c(0,0.05))

points(x = c(0.01, 0.025, 0.05),
       y = c(0.05, 0.25, 0.5))


## ---- fig.height = 3, fig.width = 6-------------------------------------------

plot(x    = 1:23, 
     y    = diurnal_temp_variation_sine(T_max = 30, T_min = 10, t=1:23), 
     type = "l", 
     xlab = "hour", 
     ylab = "temperature (°C)")

t.seq <- lapply(1:23, 
                FUN   = diurnal_temp_variation_sineexp, 
                T_max = 30, 
                T_min = 10, 
                t_r   = 6, 
                t_s   = 18)

points(x    = 1:23, 
       y    = t.seq, 
       type = "l", 
       lty  = "dotted")

points(1:23, 
       y = diurnal_temp_variation_sinesqrt(t      = 1:23, 
                                           t_r    = 6, 
                                           t_s    = 18, 
                                           T_max  = 30, 
                                           T_min  = 10, 
                                           T_minp = 12), 
       type = "l", 
       lty = "dashed")

legend(x      = "topleft", 
       title  = "function", 
       legend = c("sine", "sine-exp", "sine-sqrt"),
       lty    = c("solid", "dotted", "dashed"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

par(mar=c(5, 5, 3, 2))

r.seq <- lapply(1:24, 
                FUN = diurnal_radiation_variation, 
                doy = 172, 
                S = 8000, 
                lon = -112.07, 
                lat = 33.45)

plot(x    = 1:24, 
     y    = r.seq, 
     type = "l", 
     xlab = "hour", 
     ylab = expression(radiation ~ (W/m^{2})))

r.seq <- lapply(1:24, 
                FUN    = diurnal_radiation_variation, 
                doy    = 356, 
                S      = 4000, 
                lon    = -112.07, 
                lat    = 33.45)

points(x    = 1:24, 
       y    = r.seq, 
       type = "l", 
       lty  = "dotted")

r.seq <- lapply(1:24, 
                FUN    = diurnal_radiation_variation, 
                doy    = 266, 
                S      = 6000, 
                lon    = -112.07, 
                lat    = 33.45)

points(x    = 1:24, 
       y    = r.seq, 
       type = "l", 
       lty  = "dashed")

r.seq <- lapply(1:24, 
                FUN    = diurnal_radiation_variation, 
                doy    = 228, 
                S      = 6000, 
                lon    = -112.07, 
                lat    = 33.45)

points(x    = 1:24, 
       y    = r.seq, 
       type = "l", 
       lty  = "dotdash")

legend(x      = "topright", 
       title  = "day of year", 
       legend = c(172, 228, 266, 356), 
       lty    = c("solid", "dotdash", "dashed", "dotted"))


## -----------------------------------------------------------------------------

degree_days(T_min  = 7, 
            T_max  = 14, 
            LDT    = 12, 
            UDT    = 33, 
            method = "single.sine")

degree_days(T_min  = 7, 
            T_max  = 14, 
            LDT    = 12, 
            UDT    = 33, 
            method = "double.sine")

degree_days(T_min  = 7, 
            T_max  = 14, 
            LDT    = 12, 
            UDT    = 33, 
            method = "single.triangulation")

degree_days(T_min  = 7, 
            T_max  = 14, 
            LDT    = 12, 
            UDT    = 33, 
            method = "double.triangulation")


## ---- fig.height = 3, fig.width = 4-------------------------------------------

temp_vector <- diurnal_temp_variation_sine(T_max = 20, 
                                           T_min = -10, 
                                           t     = rep(1:24,4))

wind_speed_vector <- runif(n   = 96,
                           min = 0, 
                           max = 0.4)

time_vector <- rep(1:24, 4)
solrad_vector <- unlist(lapply(1:24, 
                               FUN    = diurnal_radiation_variation,
                               doy    = 172, 
                               S = 8000, 
                               lon    = -112.07, 
                               lat    = 33.45))

solrad_vector <- rep(solrad_vector, 4)

params <- list(SSA        = 0.7, 
               epsilon_so = 0.98, 
               k_so       = 0.293, 
               c_so       = 800, 
               dz         = 0.05, 
               z_r        = 1.5, 
               z0         = 0.02, 
               S          = solrad_vector, 
               T_a        = temp_vector, 
               u          = wind_speed_vector, 
               rho_a      = 1.177,
               rho_so     = 1620, 
               c_a        = 1006, 
               TimeIn     = time_vector, 
               dt         = 60*60, 
               shade      = FALSE)

plot(x    = 1:96, 
     y    = temp_vector, 
     type = "l", 
     xlab = "hour", 
     ylab = "temperature (°C)", 
     ylim = c(-10,50))

T_soil <- soil_temperature(z_r.intervals = 12,
                           z_r           = 1.5, 
                           z             = 2, 
                           T_a           = temp_vector, 
                           u             = wind_speed_vector, 
                           Tsoil0        = 20, 
                           z0            = 0.02, 
                           SSA           = 0.7, 
                           TimeIn        = time_vector, 
                           S             = solrad_vector, 
                           water_content = 0.2, 
                           air_pressure  = 85, 
                           rho_so        = 1620, 
                           shade         = FALSE)

points(x    = 1:96, 
       y    = T_soil, 
       lty  = "dashed", 
       type = "l")

T_soil <- soil_temperature(z_r.intervals = 12,
                           z_r           = 1.5, 
                           z             = 4, 
                           T_a           = temp_vector, 
                           u             = wind_speed_vector, 
                           Tsoil0        = 20, 
                           z0            = 0.02, 
                           SSA           = 0.7, 
                           TimeIn        = time_vector, 
                           S             = solrad_vector, 
                           water_content = 0.2, 
                           air_pressure  = 85, 
                           rho_so        = 1620, 
                           shade         = FALSE)

points(x    = 1:96, 
       y    = T_soil, 
       lty  = "dotted", 
       type = "l")

T_soil <- soil_temperature(z_r.intervals = 12,
                           z_r           = 1.5, 
                           z             = 6, 
                           T_a           = temp_vector, 
                           u             = wind_speed_vector, 
                           Tsoil0        = 20, 
                           z0            = 0.02, 
                           SSA           = 0.7, 
                           TimeIn        = time_vector, 
                           S             = solrad_vector, 
                           water_content = 0.2, 
                           air_pressure  = 85, 
                           rho_so        = 1620, 
                           shade         = FALSE)

points(x    = 1:96, 
       y    = T_soil, 
       lty  = "dotdash", 
       type = "l")

legend(x      = "topright", 
       title  = "soil depth interval", 
       legend = c(2, 4, 6), 
       lty    = c("dashed", "dotted", "dotdash"))


## ---- fig.height = 3, fig.width = 4-------------------------------------------

plot(x    = seq(500,1700,100), 
     y    = soil_specific_heat(x_o    = 0.01, 
                               x_m    = 0.6, 
                               x_w    = 0.2, 
                               rho_so = seq(500,1700,100)), 
     type = "l", 
     xlab = expression("bulk density" ~ (kg/m^{3})), 
     ylab = expression("soil specific heat" ~ (J ~ kg^{-1} ~ K^{-1})))

suppressWarnings(par(oldpar))


## -----------------------------------------------------------------------------

soil_conductivity(x      = c(0.10,0.40,0.11,0.01,0.2, 0.18), 
                  lambda = c(0.10,0.40,0.11,0.01,0.2, 0.18), 
                  g_a    = 0.125)


