---
layout: project
title: Can microlensing mimic tidal effects?
description: Binary neutron-star signals under gravitational microlensing, and whether lensing distortions can hide inside the tidal deformability.
img: /assets/img/projects/gw-lensing.png
importance: 2
category: earlier
permalink: /projects/gw-lensing/
info: IUCAA, Pune · with Dr. Anupreeta More
status: Completed
---

## The question

When two neutron stars spiral together, their tidal deformation leaves a subtle imprint on the gravitational-wave signal, measured by the **tidal deformability** $$\Lambda$$, which encodes the neutron-star equation of state.

If the signal passes close to a star or compact object on its way to us, **microlensing** also changes the amplitude and phase of the signal in a frequency-dependent way. Searches and parameter estimation normally use unlensed templates. So if a microlensed neutron-star signal is analysed as usual, can the lensing be mistaken for tidal effects, and can it bias $$\Lambda$$ without anyone noticing?

## What I did

- **Generated binary neutron-star signals** (IMRPhenomPv2_NRTidalv2) for a 1.45 + 1.35 M☉ system with $$\Lambda = 300$$, at the design sensitivity of LIGO A+ and of the Einstein Telescope.
- **Applied point-mass microlensing** with GWMAT, using the full wave-optics amplification factor, for lens masses from 1 to 10⁵ M☉ and impact parameters from 0.05 to 10.
- **Asked three things for every lens:** is the lensing detectable, how much of it can a change in $$\Lambda$$ absorb, and how far is $$\Lambda$$ pushed when the lens is ignored?
- **Estimated the biases** with a linear (Fisher-matrix) treatment, checked them against direct fits of the templates, and ran full Bayesian parameter estimation with Bilby for the hardest cases.
- **Ran the reverse test:** can differences between tidal waveform models create false evidence for microlensing?

## What I found

- **Lensing is usually detectable.** With A+, it is visible for about 94% of the lens configurations at a signal-to-noise ratio of 20, and for all of them at 50 and above.
- **Tides do not mimic microlensing.** Letting $$\Lambda$$ vary absorbs at most about 16% of the lensing distortion (22% for the lightest lenses), and typically far less.
- **But $$\Lambda$$ can be biased.** At a signal-to-noise ratio of 30, ignoring the lens shifts $$\Lambda$$ by more than its statistical error for roughly 15–20% of lens configurations. The shift comes in bands of alternating sign, depending on where the lensing interference fringes fall relative to the frequencies that carry the tidal information.
- **There are no silent biases.** The bias in $$\Lambda$$, in units of its error, never exceeds about half of the signal left over after the best unlensed fit. A large bias therefore always comes with a misfit that a microlensing search would pick up. Where the lens stays practically invisible, $$\Lambda$$ is off by at most about 1.3σ for lenses heavier than 10 M☉.
- **The Bayesian analysis agrees.** For the hardest case (a 17.8 M☉ lens), the lens is not detected, and ignoring it moves $$\Lambda$$ by only about a tenth of its posterior width.
- **Tidal-model differences do not fake microlensing.** Only ignoring tides altogether produces weak, spurious lensing evidence, and only for loud signals.
- **The Einstein Telescope shows the same picture**, even though it measures $$\Lambda$$ about five times more precisely.

These results are for one neutron-star system, without spins, behind an isolated point lens, using noise-free simulated signals.

## Tools & methods

Python · PyCBC · GWMAT · Bilby / dynesty · LALSuite · matched filtering · Fisher-matrix bias estimates · Bayesian parameter estimation

## References

1. A. Mishra, A. K. Meena, A. More and S. Bose, *Exploring the impact of microlensing on gravitational wave signals: biases, population characteristics, and prospects for detection*, MNRAS (2024), arXiv:2306.11479.
2. R. Takahashi and T. Nakamura, *Wave effects in the gravitational lensing of gravitational waves from chirping binaries*, ApJ **595**, 1039 (2003).
3. C. Cutler and M. Vallisneri, *LISA detections of massive black hole inspirals: parameter extraction errors due to inaccurate template waveforms*, Phys. Rev. D **76**, 104018 (2007).
4. I. Harry and A. Lundgren, *Failure of the Fisher matrix when including tidal terms: considering construction of template banks of tidally deformed binary neutron stars*, Phys. Rev. D **104**, 043008 (2021), arXiv:2101.01091.
