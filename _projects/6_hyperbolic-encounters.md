---
layout: project
title: Spinning hyperbolic encounters
description: Post-Newtonian orbits of unbound compact binaries with spin–orbit coupling, as a first step towards modelling gravitational-wave memory signals in pulsar timing arrays.
img: /assets/img/projects/hyperbolic-encounters.png
importance: 1
category: earlier
permalink: /projects/hyperbolic-encounters/
info: Tata Institute of Fundamental Research, Mumbai · with Prof. A. Gopakumar · May – September 2025
---

## The question

Not every encounter between two black holes ends in a merger. On a **hyperbolic orbit** the two bodies swing past each other once and fly apart again, emitting a short burst of gravitational waves. The burst also leaves a permanent change in the metric, the **gravitational-wave memory**. For supermassive black holes this falls in the nanohertz band, where a pulsar timing array would see it as a ramp in the timing residuals.

To model the signal you first need the orbit in closed form. The **quasi-Keplerian parametrisation** does exactly this for post-Newtonian orbits: the radius, time and orbital phase are written in terms of an eccentric anomaly $$u$$, just as in Newtonian mechanics, but with PN-corrected orbital elements. My summer project was to work this out myself for hyperbolic orbits of spinning bodies, starting with the leading-order spin–orbit coupling (1.5PN) for spins aligned with the orbital angular momentum.

## What I did

- **Newtonian and 1PN orbits first.** I rebuilt the hyperbolic solution step by step in Mathematica: find the turning points of the radial equation, factor the radial polynomial, then integrate for $$t(u)$$ and $$\phi(u)$$.
- **Added the spin–orbit terms** (harmonic gauge, aligned spins) and pushed the same calculation to 1.5PN. The orbit takes the form

  $$ r = a_r\,(e_r \cosh u - 1), $$

  $$ n\,(t - t_0) = e_t \sinh u - u, $$

  $$ \phi - \phi_0 = 2K \arctan\!\left[\sqrt{\frac{e_\phi + 1}{e_\phi - 1}}\,\tanh\frac{u}{2}\right], $$

  with $$a_r$$, $$e_r$$, $$e_t$$, $$e_\phi$$, $$n$$ and $$K$$ written in terms of the energy, angular momentum, mass ratio and spins. At this order the spins change the eccentricities and the periastron-advance factor (with $$G = m = 1$$, $$j$$ the reduced angular momentum and $$\chi_{S,A} = (\chi_1 \pm \chi_2)/2$$),

  $$ K = 1 + \frac{3}{c^2 j^2} - \frac{2\left[\,2\delta\,\chi_A + (2 - \eta)\,\chi_S\,\right]}{c^3 j^3}, $$

  but not the mean motion, $$n = (2E)^{3/2}\left[1 + (15 - \eta)\,E/4c^2\right]$$.
- **Checked it.** In 2026 I went back over the notebook and found a mistake: I had simplified everything under bound-orbit assumptions ($$E < 0$$). For a hyperbolic orbit this picks the wrong square-root branches and flips the signs of several elements. After correcting it, all the orbital elements and both equations agree exactly with Bini, Geralico & Rettegno (2023), and with a direct numerical integration of the 1PN + spin–orbit equations of motion.
- **Looked ahead to 2PN.** I worked through the next-to-leading-order spin–orbit Hamiltonian of Tessmer, Hartung & Schäfer (2010), which is where the next order would start.

## Next step

The orbit was always meant as an input for the signal. The goal is to compute the linear memory from spinning hyperbolic encounters and see how much spin changes the timing residuals. That would extend the non-spinning search of Dandapat et al. (2024), which was applied to NANOGrav data. I haven't started this part yet.

## Tools & methods

Mathematica · post-Newtonian equations of motion · quasi-Keplerian parametrisation · spin–orbit coupling · ADM Hamiltonians

## References

1. T. Damour and N. Deruelle, *General relativistic celestial mechanics of binary systems. I. The post-Newtonian motion*, Ann. Inst. Henri Poincaré A **43**, 107 (1985).
2. R.-M. Memmesheimer, A. Gopakumar and G. Schäfer, *Third post-Newtonian accurate generalized quasi-Keplerian parametrization for compact binaries in eccentric orbits*, Phys. Rev. D **70**, 104011 (2004), arXiv:gr-qc/0407049.
3. L. De Vittori, A. Gopakumar, A. Gupta and P. Jetzer, *Gravitational waves from spinning compact binaries in hyperbolic orbits*, Phys. Rev. D **90**, 124066 (2014), arXiv:1410.6311.
4. G. Cho, A. Gopakumar, M. Haney and H. M. Lee, *Gravitational waves from compact binaries in post-Newtonian accurate hyperbolic orbits*, Phys. Rev. D **98**, 024039 (2018), arXiv:1807.02380.
5. D. Bini, A. Geralico and P. Rettegno, *Spin-orbit contribution to radiative losses for spinning binaries with aligned spins*, arXiv:2307.12670 (2023).
6. M. Tessmer, J. Hartung and G. Schäfer, *Motion and gravitational wave forms of eccentric compact binaries with orbital-angular-momentum-aligned spins under next-to-leading order in spin-orbit and leading order in spin(1)-spin(2) and spin-squared couplings*, Class. Quantum Grav. **27**, 165005 (2010), arXiv:1003.2735.
7. S. Dandapat, A. Susobhanan, L. Dey, A. Gopakumar, P. T. Baker and P. Jetzer, *Efficient prescription to search for linear gravitational wave memory from hyperbolic black hole encounters and its application to the NANOGrav 12.5-year dataset*, Phys. Rev. D **109**, 103018 (2024), arXiv:2402.03472.
