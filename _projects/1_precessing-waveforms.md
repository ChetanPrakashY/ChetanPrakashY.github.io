---
layout: page
title: Waveform systematics for precessing binaries
description: How much do state-of-the-art models of spin-precessing black-hole binaries disagree with numerical relativity? Master's thesis at SISSA.
img: assets/img/projects/precessing-waveforms.png
importance: 1
category: current
permalink: /projects/precessing-waveforms/
---

**SISSA, Trieste** · Master's thesis with Prof. Enrico Barausse · May 2026 – present · _Paper in preparation_

## The question

Everything we learn from a gravitational-wave detection, such as the masses and spins of the black holes, comes from comparing the data with **waveform models**. Where those models are wrong, the inferred parameters can be biased.

When the black holes' spins are tilted relative to the orbit, the orbital plane **precesses**. This modulates the signal and is one of the hardest effects to model, especially together with higher harmonics. My thesis asks how large the errors of today's fast precessing models are, where in parameter space they concentrate, and what that means for parameter estimation.

## What I'm doing

- **Comparing two state-of-the-art precessing models**, IMRPhenomXPHM and the newer IMRPhenomXO4a, against the numerical-relativity surrogate NRSur7dq4, starting by reproducing the mismatch study of Thompson et al. (2024).
- **Writing a match code from scratch:** a noise-weighted inner product with analytic maximisation over orbital phase and polarisation, maximisation over time shift via inverse FFT, and a grid search over the template's in-plane spin orientation.
- **Using the SNR-weighted precessing mismatch** of Harry et al. (2016), averaged over reference phases, with the Advanced LIGO design sensitivity curve.
- **Scanning parameter space:** 1024 random two-spin configurations across several total masses and inclinations, run in parallel.
- **Building an independent pipeline with Bilby and PyCBC** that includes the detector response, as a cross-check.
- **Validating everything:** time- and frequency-domain waveform comparisons, match landscapes over the precession angle, and per-configuration comparisons of the two models.

<div class="row justify-content-sm-center">
  <div class="col-sm-10 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/projects/figure-placeholder.png" title="Mismatch distributions" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
  Placeholder. This will show mismatch distributions of IMRPhenomXPHM and IMRPhenomXO4a against NRSur7dq4 across total masses.
</div>

## Tools & methods

Python · LALSuite / LALSimulation · Bilby · PyCBC · NumPy / SciPy · NRSur7dq4, IMRPhenomXPHM, IMRPhenomXO4a (also IMRPhenomTPHM, SEOBNRv5PHM) · noise-weighted matched filtering · SNR-weighted mismatch

## Background reading

- Thompson et al. (2024), _PhenomXO4a: a phenomenological gravitational-wave model for precessing black-hole binaries with higher multipoles and asymmetries_
- Pratten et al. (2021), _Computationally efficient models for the dominant and sub-dominant harmonic modes of precessing binary black holes_
- Harry, Privitera, Bohé & Buonanno (2016), _Searching for gravitational waves from compact binaries with precessing spins_
