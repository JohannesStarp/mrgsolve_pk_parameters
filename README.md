# PK Parameter Calculation Issue in MRGsolve

This repository investigates inaccuracies in calculating pharmacokinetic (PK) parameters—especially `cmax` and `tmax` - using [MRGsolve](https://mrgsolve.github.io/) with default solver settings.

The whole topic is related to this blog [post](https://mrgsolve.org/blog/posts/true-cmax.html) and discussed [here](https://github.com/metrumresearchgroup/mrgsolve/discussions/1284#discussioncomment-13480801).

## Summary

Under default settings, predicted `cmax` values can diverge from the actual peak concentration, particularly during steep absorption phases. Adjusting the solver step size (`hmax`) corrects this, but it's not recommended as a routine fix according to MRGsolve guidance.

## Methods

Two PK models were used:
- A two-compartment model from the MRGsolve blog
- A custom one-compartment model

Simulations included oral and infusion dosing of 200 mg, with comparisons between default and adjusted solver settings.

## Conclusion

The issue appears to stem from how concentrations are handled during ODE solving. Limiting step size improves accuracy, but a more efficient solution is needed that avoids altering solver behavior.

## More Info

See the Quarto document in this repository for detailed analysis and plots.
