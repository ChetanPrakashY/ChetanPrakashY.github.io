---
layout: page
title: Locating gravitational-wave sources with pulsar timing arrays
description: How precisely can a pulsar timing array pin down a single supermassive black-hole binary on the sky, and how much do precise pulsar distances help?
img: assets/img/projects/pta-localization.png
importance: 2
category: current
permalink: /projects/pta-localization/
---

**Kumamoto University** · with Prof. Takahashi · January 2026 – present · _Paper in preparation_

## The question

Pulsar timing arrays (PTAs) are galaxy-sized gravitational-wave detectors that use millisecond pulsars as precise clocks. They are now expected to detect the continuous nanohertz signal from an **individual supermassive black-hole binary**. To identify the host galaxy, that source has to be localised on the sky to roughly a thousandth of a square degree, far better than current searches achieve.

Part of the gravitational-wave signal, the **pulsar term**, carries phase information that depends on the distance to each pulsar. The question is how much precise distances to a few nearby pulsars, measured by VLBI today and by the SKA in the future, sharpen the localisation, and where on the sky it helps most.

## What I'm doing

- **Reproducing a recent forecast:** I rebuilt the analysis of Kato & Takahashi (2026, _Phys. Rev. D_ 113, 022001) from its public data release.
- **Modelling the timing residuals** of a continuous-wave source, with both Earth and pulsar terms, for a simulated array of 87 pulsars at the sky positions of the European, North American and Australian PTAs.
- **Building a Fisher-matrix forecast** covering the source parameters and every pulsar's distance, computed with automatic differentiation in **JAX**, then marginalising to sky-localisation areas.
- **Comparing distance-prior scenarios,** from today's typical uncertainties to SKA-era precision for the nearby pulsars J0437−4715 and J0030+0451, across a range of timing-noise levels.
- **Fixing a numerical instability:** the full Fisher matrix becomes badly ill-conditioned for sources close to a well-measured pulsar. I rewrote the marginalisation using a **Schur complement**, which makes it stable, and traced residual differences to how the sky grid is sampled.

<div class="row">
  <div class="col-sm-6 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/projects/figure-placeholder.png" title="Sky-localisation map" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm-6 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/projects/figure-placeholder.png" title="Localisation area against noise" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
  Placeholders. Left: a sky map of localisation precision. Right: localisation area against pulsar timing noise for different pulsar-distance priors.
</div>

## Tools & methods

Python · JAX (autodiff, JIT) · NumPy / SciPy · pandas · Matplotlib · Fisher-matrix forecasting · Schur-complement marginalisation · continuous-wave PTA signal model

## Background reading

- Kato & Takahashi (2026), _Realistic assessment of a single gravitational wave source localization taking into account precise pulsar distances with pulsar timing arrays_, Phys. Rev. D 113, 022001
- Taylor (2026), _On the angular localization of gravitational-wave signals by pulsar timing arrays_
- Mingarelli (2016), _Gravitational Wave Astrophysics with Pulsar Timing Arrays_
