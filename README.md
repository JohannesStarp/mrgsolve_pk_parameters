# Coding Session: From NONMEM to mrgsolve

## NEW: Please find the Agenda for next coding session (21st May) in the Agenda section below.

## Overview

This repository supports an upcoming coding session focused on translating existing NONMEM control streams into C++-based models compatible with [mrgsolve](https://mrgsolve.github.io/). We will use mrgsolve to simulate pharmacokinetic/pharmacodynamic (PK/PD) models and explore key parameters such as:

- Area Under the Curve (**AUC**)
- Maximum Concentration (**Cmax**)
- Minimum Concentration (**Cmin**)
- Time to Maximum Concentration (**Tmax**)

## Objectives

- **Familiarize with basic mrgsolve functions** through official resources.
- **Recode NONMEM control streams** into **C++ model specifications** for mrgsolve.
- **Perform PK/PD simulations** using mrgsolve.
- **Extract and explore key PK/PD metrics** from the simulation outputs.

## Getting Started with mrgsolve

Before the session, we recommend familiarizing yourself with mrgsolve by reviewing:

- The [mrgsolve official website](https://mrgsolve.org/)
- The [mrgsolve vignettes](https://mrgsolve.org/vignette/)

These resources provide excellent introductions, practical examples, and hands-on exercises to build a solid foundation before we dive into coding.

## Installation and Setup

Setting up mrgsolve requires a functioning C++ compiler configured for R. **Some preparation (~2 hours)** is recommended **ahead of the session** to install necessary components and troubleshoot any setup issues.

Please refer to the detailed instructions in the **mrgsolve User Guide** (Section 14: [Installation](https://mrgsolve.org/user-guide/#installation)).

Typical installation steps include:

- Ensuring that **RTools** (for Windows) or **Xcode command line tools** (for macOS) are installed.
- Installing required R packages:
- Verifying that your R environment can compile C++ code.

We strongly recommend completing the setup and running a basic mrgsolve example before the session.

## Agenda

1. **Introduction to mrgsolve**
   - What is mrgsolve?
   - How mrgsolve differs from NONMEM.
   - Key mrgsolve structures: `$PARAM`, `$CMT`, `$ODE`, `$TABLE`, `$MAIN`.

2. **Model Translation**
   - Understanding the NONMEM control stream structure (our current NONMEM file is provided in the folder "raw_data")
   - Mapping NONMEM syntax to mrgsolve C++ blocks (an example control stream is provided in the folder "raw_data")

3. **Model Implementation in C++**
   - Setting up and building models.
   - Common translation tips and troubleshooting.

4. **Simulation and Analysis**
   - Running simulations with mrgsolve.
   - Example scripts are provided in the reposetory.
   - Extracting and visualizing AUC, Cmax, Cmin, and Tmax.

5. **Problem solving**
   - Last coding session (14th May) we discovered that Cmax is visualised incorrectly.
   - The task now is to find a way to code the control stream + mrgsolve R script for extracting and visualising reasonable Cmax values. 
