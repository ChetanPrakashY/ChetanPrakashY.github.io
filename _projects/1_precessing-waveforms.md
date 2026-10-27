---
layout: project
title: Waveform systematics for precessing binaries
description: How much do state-of-the-art models of spin-precessing black-hole
  binaries disagree with numerical relativity? Master's thesis at SISSA.
info: SISSA, Trieste · Master's thesis with Prof. Enrico Barausse · May 2026 –
  present
status: Paper in preparation
category: current
importance: 1
img: /assets/img/projects/precessing-waveforms.png
permalink: /projects/precessing-waveforms/
figures:
  - image: /assets/img/projects/figure-placeholder.png
    caption: Figure shows mismatch distributions of IMRPhenomXPHM and IMRPhenomXO4a
      against NRSur7dq4 across total masses. Independently reproducting Fig. 11
      of Thompson et al. (2024)
  - {}
---
## The question

Everything we learn from a gravitational-wave detection, such as the masses and spins of the black holes, comes from comparing the data with **waveform models**. Where those models are wrong, the inferred parameters can be biased.

When the black holes' spins are tilted relative to the orbit, the orbital plane **precesses**. This modulates the signal and is one of the hardest effects to model, especially together with higher harmonics. My thesis asks how large the errors of today's fast precessing models are, where in parameter space they concentrate, and if we can mitigate those biases between those models .

## Progress

- **Written a match code from scratch:** a noise-weighted inner product with analytic maximisation over orbital phase and polarisation, maximisation over time shift via inverse FFT, and a grid search over the template's in-plane spin orientation. Based on Harry et al. (2016).
- **Building an independent pipeline with Bilby for parameter estimation** to study the whole parameter space to understand where the bias is in the different models.
- **Models under study for now:** IMRPhenomXPHM, IMRPhenomXO4a, NRSur7dq4, IMRPhenomTPHM, IMRPhenomXPHM SpinTaylor,  .

## Tools & methods

Python · LALSuite / LALSimulation · Bilby · PyCBC · NumPy / SciPy · SNR-weighted mismatch · Fisher Matrix · Bayesian Inference 

## Background reading

- Thompson et al. (2024), *PhenomXO4a: a phenomenological gravitational-wave model for precessing black-hole binaries with higher multipoles and asymmetries*
- Pratten et al. (2021), *Computationally efficient models for the dominant and sub-dominant harmonic modes of precessing binary black holes*
- Harry, Privitera, Bohé & Buonanno (2016), *Searching for gravitational waves from compact binaries with precessing spins*

