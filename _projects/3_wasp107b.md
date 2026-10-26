---
layout: project
title: A panchromatic JWST view of WASP-107b
description: Combining four JWST instruments into one transmission spectrum of a warm Neptune, while accounting for the spots and faculae on its active host star.
img: /assets/img/projects/wasp107b.png
importance: 3
category: current
permalink: /projects/wasp107b/
info: IIT Tirupati · with Dr. Vikram Khaire · July 2025 – present
status: First-author paper in preparation
figures:
- image: /assets/img/projects/figure-placeholder.png
  caption: 'Placeholder: MIRI LRS transmission spectrum.'
- image: /assets/img/projects/figure-placeholder.png
  caption: 'Placeholder: NIRSpec white-light curve.'
---

## The question

WASP-107b is a **warm Neptune** with an unusually low density and a puffy atmosphere, which makes it one of the best planets for transmission spectroscopy. As it passes in front of its star, starlight filters through its atmosphere and molecules leave their fingerprints in the spectrum.

Its host is an **active K dwarf**, though, and unocculted starspots and bright faculae can imprint features on the spectrum that look planetary but aren't (the _transit light source effect_). The project combines JWST data from 0.6 to 14 µm into a single **panchromatic spectrum** and uses **free retrievals** to separate what the planet's atmosphere is telling us from the heterogeneous surface of its star.

## What I'm doing

- **NIRISS SOSS:** a full reduction from raw data to spectra with **exoTEDRF**. This covers detector-level corrections, trace extraction and contamination masking, and gives transmission spectra in both spectral orders.
- **NIRCam grism:** transmission spectra in the F322W2 and F444W filters.
- **MIRI LRS:** a complete **Eureka!** reduction (Stages 1–6), benchmarked against the published MIRI spectrum of Dyrek et al. (2024).
- **NIRSpec:** white-light transit curves for both detectors; spectroscopic light curves in progress.
- **Retrievals:** Bayesian free retrievals with nested sampling across the four instrument modes, including stellar-contamination modelling for the spotted host star.

## Tools & methods

JWST pipeline · exoTEDRF · Eureka! · astroquery / MAST · Python (NumPy, Astropy, Matplotlib) · transit light-curve fitting · Bayesian free retrieval (nested sampling) · stellar-contamination modelling

## Background reading

- Sing et al. (2024), _A warm Neptune's methane reveals core mass and vigorous atmospheric mixing_, Nature
- Dyrek et al. (2024), JWST MIRI transmission spectrum of WASP-107b
- Rackham, Apai & Giampapa (2018) and Rackham et al. (2019), _The Transit Light Source Effect_ I and II
- Madhusudhan (2018), _Atmospheric Retrieval of Exoplanets_

See also: [K2-18b with JWST MIRI](/projects/k2-18b/), where I first learned these tools.
