## HEADER --------------------------------------------
##
## Project:        Coding session MRGsolve
## Script:         Simulations
##
## Author:         Johannes Starp
## Copyright:      Copyright 2025 - Johannes Starp
## Email:          johannes.starp@outlook.com
## Date:           2025-04-29
##
## Look up README.md for more information
##
## SETUP ---------------------------------------------


# model import run007.cpp
mod_run007_default <- mread("raw_data/run007.cpp")
mod_run007_hmax <- update(mod_run007_default, hmax = 0.001)

# simulation model run007

sim_run007_default <- mod_run007_default |> 
  ev(amt = 200, rate = 1200, ii = 12, addl = 5, cmt = 1, evid = 1) |>
  mrgsim(delta = 0.01, end = 4)

sim_run007_hmax <- mod_run007_hmax |> 
  ev(amt = 200, rate = 1200, ii = 12, addl = 5, cmt = 1, evid = 1) |>
  mrgsim(delta = 0.01, end = 4)

# model import baron.cpp
mod_baron_default <- mread("raw_data/model_baron.cpp")
mod_baron_hmax <- update(mod_baron_default, hmax = 0.001)

#simulation model baron
sim_baron_default <- mod_baron_default |> 
  ev(amt = 200, ii = 12, addl = 5, cmt = 1, evid = 1) |>
  mrgsim(delta = 0.01, end = 4)

sim_baron_hmax <- mod_baron_hmax |> 
  ev(amt = 200, ii = 12, addl = 5, cmt = 1, evid = 1) |>
  mrgsim(delta = 0.01, end = 4)

