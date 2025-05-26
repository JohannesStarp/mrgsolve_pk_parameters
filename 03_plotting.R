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
  filter(parameter == "C1" | parameter == "CMAX") |>
  ggplot(aes(x = time)) +
  geom_line(aes(y = value, colour = parameter)) +
  # naming of the axes
  labs(x = "Time (h)", y = "Concentration (mg/L)")

plot_run_007_hmax <- sim_run007_hmax_df |> 
  filter(parameter == "C1" | parameter == "CMAX") |>
  ggplot(aes(x = time)) +
  geom_line(aes(y = value, colour = parameter)) +
  # naming of the axes
  labs(x = "Time (h)", y = "Concentration (mg/L)")

# simulation model baron
plot_baron_default <- sim_baron_default_df |> 
  filter(parameter == "CP" | parameter == "Cmax") |>
  ggplot(aes(x = time)) +
  geom_line(aes(y = value, colour = parameter)) +
  # naming of the axes
  labs(x = "Time (h)", y = "Concentration (mg/L)")

plot_baron_hmax <- sim_baron_hmax_df |> 
  filter(parameter == "CP" | parameter == "Cmax") |>
  ggplot(aes(x = time)) +
  geom_line(aes(y = value, colour = parameter)) +
  # naming of the axes
  labs(x = "Time (h)", y = "Concentration (mg/L)")
