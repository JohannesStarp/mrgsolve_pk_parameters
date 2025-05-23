## HEADER --------------------------------------------
##
## Project:        Coding session MRGsolve
## Script:         plotting
##
## Author:         Johannes Starp
## Copyright:      Copyright 2025 - Johannes Starp
## Email:          johannes.starp@outlook.com
## Date:           2025-04-29
##
## Look up README.md for more information
##
## SETUP ---------------------------------------------

# simulation model run007
# Plotting the simulation results
plot_run_007_default <- sim_run007_default_df |> 
  filter(dose == 200) |> 
  ggplot(aes(x = time)) +
  geom_line(aes(y = C1)) +
  # geom_line(aes(y = AUC), color = "red") +
  # geom_line(aes(y = TMAX), color = "blue") +
  geom_line(aes(y = CMAX), color = "red") +
  facet_wrap(~ID) +
  # naming of the axes
  labs(x = "Time (h)", y = "Concentration (mg/L)")

plot_run_007_hmax <- sim_run007_hmax_df |> 
  filter(dose == 200) |> 
  ggplot(aes(x = time)) +
  geom_line(aes(y = C1)) +
  # geom_line(aes(y = AUC), color = "red") +
  # geom_line(aes(y = TMAX), color = "blue") +
  geom_line(aes(y = CMAX), color = "red") +
  facet_wrap(~ID) +
  # naming of the axes
  labs(x = "Time (h)", y = "Concentration (mg/L)")

# simulation model baron
plot_baron_default <- sim_baron_default_df |> 
  ggplot(aes(x = time)) +
  geom_line(aes(y = CP)) +
  # geom_line(aes(y = AUC), color = "red") +
  # geom_line(aes(y = TMAX), color = "blue") +
  geom_line(aes(y = Cmax), color = "red") +
  facet_wrap(~ID) +
  # naming of the axes
  labs(x = "Time (h)", y = "Concentration (mg/L)")

plot_baron_hmax <- sim_baron_hmax_df |> 
  ggplot(aes(x = time)) +
  geom_line(aes(y = CP)) +
  # geom_line(aes(y = AUC), color = "red") +
  # geom_line(aes(y = TMAX), color = "blue") +
  geom_line(aes(y = Cmax), color = "red") +
  facet_wrap(~ID) +
  # naming of the axes
  labs(x = "Time (h)", y = "Concentration (mg/L)")
