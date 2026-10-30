---
layout: project
title: Spinning hyperbolic encounters
description: Extending the post-Newtonian description of unbound compact-object encounters to include spin–orbit effects, with an eye on gravitational-wave memory in PTAs.
img: /assets/img/projects/hyperbolic-encounters.png
importance: 1
category: earlier
permalink: /projects/hyperbolic-encounters/
info: Tata Institute of Fundamental Research, Mumbai · with Prof. A. Gopakumar · May – September 2025
---

## The question

Not all compact objects that meet end up merging. In a **hyperbolic encounter**, two black holes or neutron stars swing past each other once and fly apart. They emit a burst of gravitational waves and leave behind a permanent distortion of spacetime, the **gravitational-wave memory**. Pulsar timing arrays could see such memory as a sudden step in pulsar timing residuals.

Modelling these bursts needs an accurate, analytic description of the orbit. The **quasi-Keplerian parametrisation** writes the post-Newtonian orbit in a closed, Kepler-like form, but the existing hyperbolic versions describe non-spinning bodies only. This project adds **spin–orbit coupling**.

## What I did

- **Derived the 1.5PN hyperbolic "Kepler equation"** with leading-order spin–orbit terms:
  $$ n\,(t - t_0) = e_t \sinh u - u , $$
  with the orbital elements $$a_r$$, $$e_r$$, $$e_t$$ and the mean motion $$n$$ expressed in terms of the conserved energy, angular momentum, mass ratio and spins.
- **Derived the corresponding angular equation**, which gives the orbital phase as a function of the true anomaly $$v$$ including spin–orbit corrections.
- **Built the derivation step by step in Mathematica,** from the Newtonian orbit through 1PN to 1.5PN, integrating the radial equation between its turning points.
- **Set up a next-to-leading-order spin–orbit Hamiltonian framework** (Poisson brackets and equations of motion for positions, momenta and spins) as the basis for going to higher order.
- **Worked towards a model** for linear gravitational-wave bursts with memory in pulsar timing array analyses.


## Tools & methods

Mathematica (symbolic algebra, Poisson brackets) · post-Newtonian ADM Hamiltonians · quasi-Keplerian parametrisation · spin–orbit coupling

## Background reading

- Damour & Deruelle (1985), _General relativistic celestial mechanics of binary systems I_
- Memmesheimer, Gopakumar & Schäfer (2004), _Third post-Newtonian accurate generalized quasi-Keplerian parametrization for compact binaries in eccentric orbits_
- Cho, Gopakumar, Haney & Lee (2018), _Gravitational waves from compact binaries in post-Newtonian accurate hyperbolic orbits_
