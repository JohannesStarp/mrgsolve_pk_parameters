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
  mutate(dose = case_when(dose > 0 ~ dose)) |> 
  group_by(ID) |> 
  fill(dose) |> 
  mutate(dose = case_when(time == 0 ~ NA,
                          time != 0 ~ dose)) |> 
  fill(dose, .direction = "up") |> 
  ungroup() |> 
  mutate(administration = "short")

sim_run007_hmax_df <- sim_run007_hmax@data |> 
  mutate(dose = case_when(dose > 0 ~ dose)) |> 
  group_by(ID) |> 
  fill(dose) |> 
  mutate(dose = case_when(time == 0 ~ NA,
                          time != 0 ~ dose)) |> 
  fill(dose, .direction = "up") |> 
  ungroup() |> 
  mutate(administration = "short")

# simulation model baron
sim_baron_default_df <- sim_baron_default@data
sim_baron_hmax_df <- sim_baron_hmax@data


