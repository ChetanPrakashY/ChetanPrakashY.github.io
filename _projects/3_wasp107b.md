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
  - image: /assets/img/projects/figure-placeholder.png
    caption: "Placeholder: MIRI LRS transmission spectrum."
  - image: /assets/img/projects/figure-placeholder.png
    caption: "Placeholder: NIRSpec white-light curve."
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
  against the published MIRI spectrum of Dyrek et al. (2024).
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

## Background reading

- Sing et al. (2024), *A warm Neptune's methane reveals core mass and vigorous atmospheric mixing*, Nature
- Dyrek et al. (2024), JWST MIRI transmission spectrum of WASP-107b
- Rackham, Apai & Giampapa (2018) and Rackham et al. (2019), *The Transit Light Source Effect* I and II
- Madhusudhan (2018), *Atmospheric Retrieval of Exoplanets*

See also: [K2-18b with JWST MIRI](/projects/k2-18b/), where I first learned these tools.