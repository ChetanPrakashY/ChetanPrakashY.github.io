---
layout: project
title: A panchromatic JWST view of WASP-107b
description: Combining four JWST instruments into one transmission spectrum of a
  warm Neptune,and the TLSE effects
info: IIT Tirupati · with Dr. Vikram Khaire · July 2025 – present
status: First-author paper in preparation
category: current
importance: 3
img: /assets/img/projects/wasp107b.png
permalink: /projects/wasp107b/
figures:
- image: /assets/img/projects/wasp107b-nircam-retrieval.png
  caption: Free retrieval of the NIRCam transmission spectrum. Both grism filters
    are fitted simultaneously with a free inter-filter offset; the blue curve is the
    median model with 1σ and 2σ credible intervals, and the lower panel shows residuals
    in units of σ. The +96 ppm shift of F444W is the retrieved offset, not a correction
    applied by hand.
  after_point: 2
- image: /assets/img/projects/wasp107b-miri-vs-published.png
  caption: MIRI/LRS re-reduction of WASP-107b compared with the published spectrum
    of Welbanks et al. (2024). Agreement over the 46 shared channels improves to χ²/N
    = 0.57 after re-reduction following the published procedures.
  after_point: 3
---
## The question

WASP-107b is a **warm Neptune** with an unusually low density and a puffy
atmosphere, which makes it one of the best planets for transmission
spectroscopy. As it passes in front of its star, starlight filters through its
atmosphere and molecules leave their fingerprints in the spectrum.

Its host is an **active K dwarf**. We are also looking into
(the *transit light source effect*). This project reduces JWST observations
spanning 0.6–12 µm and uses **free retrievals**.

## What I'm doing

- **NIRISS SOSS:** full reduction from raw data to spectra with **exoTEDRF** —
  detector-level corrections, trace extraction and contamination masking —
  giving transmission spectra in both spectral orders.
- **NIRCam grism:** transmission spectra using Eureka! in the F322W2 and F444W filters.
- **MIRI LRS:** a complete **Eureka!** reduction (Stages 1–6), benchmarked
  against the published MIRI spectrum of Welbanks et al. (2024).
- **NIRSpec G395H:** full Eureka! reduction for both detectors, giving
  transmission spectra across 2.8–5.2 µm.
- **Retrievals:** Bayesian free retrievals with **POSEIDON** and **MultiNest**
  for each instrument separately, with stellar-contamination modelling for the
  spotted host. Detection significances come from leave-one-species-out model
  comparison.
- **In progress:** a joint fit across all instruments with free
  inter-instrument offsets, and some extension ideas we are woking on.

## Tools & methods

JWST pipeline · exoTEDRF · Eureka! · POSEIDON · MultiNest · astroquery / MAST ·
Python (NumPy, Astropy, Matplotlib) · transit light-curve fitting · Bayesian
free retrieval (nested sampling) 

## Reading list

**WASP-107b**

- Huang et al. (2026), *A Cloudy Fit to the Atmosphere of WASP-107 b*
- Murphy et al. (2025), *A Panchromatic Characterization of the Evening and Morning Atmosphere of WASP-107 b: Composition and Cloud Variations, and Insight into the Effect of Stellar Contamination*
- Krishnamurthy et al. (2025), *Continuous helium absorption from the leading and trailing tails of WASP-107b*
- Welbanks et al. (2024), *A high internal heat flux and large core in a warm Neptune exoplanet*
- Sing et al. (2024), *A warm Neptune’s methane reveals core mass and vigorous atmospheric mixing*
- Dyrek et al. (2024), *SO2, silicate clouds, but no CH4 detected in a warm Neptune*

**Stellar contamination (transit light source effect)**

- Rackham et al. (2018), *The Transit Light Source Effect: False Spectral Features and Incorrect Densities for M-dwarf Transiting Planets*
- Rackham et al. (2019), *The Transit Light Source Effect II: The Impact of Stellar Heterogeneity on Transmission Spectra of Planets Orbiting Broadly Sun-like Stars*

**Retrievals & methods**

- Grant et al. (2023), *JWST-TST DREAMS: Quartz Clouds in the Atmosphere of WASP-17b*
- Barstow et al. (2020), *A comparison of exoplanet spectroscopic retrieval tools*
- Madhusudhan (2018), *Atmospheric Retrieval of Exoplanets*

**K2-18b & biosignatures**

- Madhusudhan et al. (2025), *New Constraints on DMS and DMDS in the Atmosphere of K2-18 b from JWST MIRI*
- Luque et al. (2025), *Insufficient evidence for DMS and DMDS in the atmosphere of K2-18 b. From a joint analysis of JWST NIRISS, NIRSpec, and MIRI observations*
- Schmidt et al. (2025), *A Comprehensive Reanalysis of K2-18 b's JWST NIRISS+NIRSpec Transmission Spectrum*
- Seager et al. (2025), *Prospects for Detecting Signs of Life on Exoplanets in the JWST Era*
- Benneke et al. (2019), *Water Vapor and Clouds on the Habitable-Zone Sub-Neptune Exoplanet K2-18b*

See also: [K2-18b with JWST MIRI](/projects/k2-18b/), where I first learned these tools.