---
layout: project
title: Gravitational-wave source localization with pulsar timing arrays
description: How precisely can a pulsar timing array pin down a single
  supermassive black-hole binary on the sky, and how much do precise pulsar
  distances help?
info: Kumamoto University (remote) · with Prof. Keitaro Takahashi · January 2026
  – present
status: Paper in preparation
category: current
importance: 2
img: /assets/img/projects/pta-localization.png
permalink: /projects/pta-localization/
figures:
  - image: /assets/img/projects/pta-kt-fig3-reproduction.png
    caption: "My reproduction of Fig. 3 of Kato & Takahashi (2026). Each map shows the 68% sky-localisation area Ω (deg²) of a single continuous-wave source, as a function of its sky position, for a simulated array of 87 pulsars."
    after_point: 1
---
## The question

Pulsar timing arrays (PTAs) are galaxy-sized gravitational-wave detectors that use millisecond pulsars as precise clocks. After the evidence for a nanohertz gravitational-wave background, the next goal is to detect the continuous signal from an **individual supermassive black-hole binary**. To identify the host galaxy, that source has to be localised on the sky to roughly a thousandth of a square degree, far better than current searches achieve.

Part of the signal, the **pulsar term**, carries a phase that depends on the distance to each pulsar. The question is how much precise distances to a few nearby pulsars, measured by VLBI today and by the SKA in the future, sharpen the localisation, why the gain is as large as it is, and how precise a distance has to be before it helps.

## Progress

- **Reproducing a recent forecast:** I rebuilt the analysis of Kato & Takahashi (2026) from its public data release and compared my maps with theirs pixel by pixel.
- **Modelling the timing residuals** of a continuous-wave source, with both Earth and pulsar terms, for a simulated array of 87 pulsars at the sky positions of the European, North American and Australian PTAs.
- **Building a Fisher-matrix forecast** over the source parameters and every pulsar's distance, computed with automatic differentiation in **JAX**, then marginalising to sky-localisation areas.
- **Comparing distance-prior scenarios,** from today's typical uncertainties to SKA-era precision for the nearby pulsars J0437−4715 and J0030+0451, across a range of timing-noise levels.
- **Fixing a numerical instability:** the full Fisher matrix becomes badly ill-conditioned for sources close to a well-measured pulsar. I rewrote the marginalisation using a **Schur complement**, which makes it stable.
- **Working on the analytic side:** closed-form expressions for how the localisation depends on the distance precision, checked against Fisher matrices built from the full waveform.

## Tools & methods

Python · JAX (autodiff, JIT) · NumPy / SciPy · SymPy · pandas · Matplotlib · Fisher-matrix forecasting · Schur-complement marginalisation · continuous-wave PTA signal model

## Where I started

The project began with the Hellings–Downs curve: Romano & Allen (2024) and Allen (2023) on its meaning and its cosmic variance.

[My derivation notes: the Hellings–Downs curve and its variance (PDF)](/assets/pdf/hellings-downs-variance-notes.pdf)

## References

1. J. D. Romano and B. Allen, *Answers to frequently asked questions about the pulsar timing array Hellings and Downs curve*, Class. Quantum Grav. **41**, 175008 (2024), arXiv:2308.05847.
2. B. Allen, *Variance of the Hellings-Downs correlation*, Phys. Rev. D **107**, 043018 (2023), arXiv:2205.05637.
3. R. Kato and K. Takahashi, *Realistic assessment of a single gravitational wave source localization taking into account precise pulsar distances with pulsar timing arrays*, Phys. Rev. D **113**, 022001 (2026).
4. R. Kato and K. Takahashi, *Precision of localization of single gravitational-wave source with pulsar timing array*, Phys. Rev. D **108**, 123535 (2023).
5. S. R. Taylor, *On the angular localization of gravitational-wave signals by pulsar timing arrays*, arXiv:2603.10120 (2026).
6. L. Boyle and U.-L. Pen, *Pulsar timing arrays as imaging gravitational wave telescopes: Angular resolution and source (de)confusion*, Phys. Rev. D **86**, 124028 (2012).
7. C.-F. Wen, Y.-Q. Chen, S.-Y. Zhao, H. Ding and X.-J. Zhu, *From Detection to Host Galaxy Identification: Precision Continuous Gravitational Wave Localization with a Few Anchor Pulsars*, Chin. Phys. Lett. **43**, 061102 (2026), arXiv:2603.28897.
8. K. J. Lee et al., *Gravitational wave astronomy of single sources with a pulsar timing array*, Mon. Not. R. Astron. Soc. **414**, 3251 (2011).
9. X.-J. Zhu et al., *Detection and localization of continuous gravitational waves with pulsar timing arrays: the role of pulsar terms*, Mon. Not. R. Astron. Soc. **461**, 1317 (2016).
10. M. Vallisneri, *Use and abuse of the Fisher information matrix in the assessment of gravitational-wave parameter-estimation prospects*, Phys. Rev. D **77**, 042001 (2008).
11. A. C. Tsai, D. L. Jow and U.-L. Pen, *Reaching diffraction-limited localization with coherent PTAs*, arXiv:2512.10795 (2025).
12. S.-R. Xiao et al., *Two-Dimensional Pulsar Distance Inference from Nanohertz Gravitational Waves*, arXiv:2512.10729 (2025).
13. R. Smits et al., *Prospects for accurate distance measurements of pulsars with the Square Kilometre Array: enabling fundamental physics*, Astron. Astrophys. **528**, A108 (2011).
14. C. M. F. Mingarelli, *Gravitational Wave Astrophysics with Pulsar Timing Arrays*, Springer Theses (Springer, 2016).
15. G. Agazie et al. (NANOGrav), *The NANOGrav 15 yr Data Set: Evidence for a Gravitational-wave Background*, Astrophys. J. Lett. **951**, L8 (2023).
16. J. Antoniadis et al. (EPTA), *The second data release from the European Pulsar Timing Array. III. Search for gravitational wave signals*, Astron. Astrophys. **678**, A50 (2023).
17. D. J. Reardon et al. (PPTA), *Search for an Isotropic Gravitational-wave Background with the Parkes Pulsar Timing Array*, Astrophys. J. Lett. **951**, L6 (2023).
