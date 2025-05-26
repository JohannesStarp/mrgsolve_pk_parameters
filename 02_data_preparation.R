## HEADER --------------------------------------------
##
## Project:        Coding session MRGsolve
## Script:         data preparation
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
#creating tibble for short infusion
sim_run007_default_df <- sim_run007_default@data |> 
  pivot_longer(cols = c(C1, CMAX, TMAX),
               names_to = "parameter",
               values_to = "value")

sim_run007_hmax_df <- sim_run007_hmax@data |> 
  pivot_longer(cols = c(C1, CMAX, TMAX),
               names_to = "parameter",
               values_to = "value")

# simulation model baron
sim_baron_default_df <- sim_baron_default@data |> 
  pivot_longer(cols = c(CP, Cmax),
               names_to = "parameter",
               values_to = "value")

sim_baron_hmax_df <- sim_baron_hmax@data |> 
  pivot_longer(cols = c(CP, Cmax),
               names_to = "parameter",
               values_to = "value")


