---
layout: page
title: Can microlensing mimic tidal effects?
description: Binary neutron-star waveforms under gravitational microlensing, and how easily lensing distortions could be confused with tidal deformability.
img: assets/img/projects/gw-lensing.png
importance: 2
category: earlier
permalink: /projects/gw-lensing/
---

**IUCAA, Pune** · with Dr. Anupreeta More · May – August 2024

## The question

When two neutron stars spiral together, their tidal deformation leaves a subtle imprint on the gravitational-wave signal that encodes the **neutron-star equation of state**.

If the signal passes near a star or compact object in an intervening galaxy, **microlensing** also imprints frequency-dependent changes on its amplitude and phase. If we analyse a microlensed signal with ordinary, unlensed templates, could the lensing distortions be mistaken for tidal effects, or bias them? I set out to quantify how much the two effects overlap.

## What I did

- **Generated binary neutron-star waveforms** (IMRPhenomPv2_NRTidalv2) with tidal parameters from a realistic equation of state (SLy), plus binary black-hole waveforms for comparison.
- **Applied point-mass microlensing** with the GWMAT package, scanning lens masses from 10 to 10⁵ solar masses and a wide range of impact parameters, using wave optics with a switch to geometric optics at high frequency.
- **Explored how each effect changes the signal** — time series, amplitude and phase — as masses, mass ratio, tidal deformability and lens parameters vary.
- **Built an unlensed template bank** with tidal parameters, plus a set of microlensed test signals.
- **Computed matches and fitting factors** with PyCBC, in an MPI-parallel code, to measure how well unlensed templates can absorb lensing distortions.
- Presented the project at IUCAA in July 2024.

<div class="row">
  <div class="col-sm-6 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/projects/figure-placeholder.png" title="Microlensed vs unlensed signal" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm-6 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/projects/figure-placeholder.png" title="Tidal vs microlensing effects" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
<div class="caption">
  Placeholders. Left: a microlensed neutron-star signal against its unlensed counterpart. Right: tidal effects compared with microlensing effects on the same signal.
</div>

## Tools & methods

Python · PyCBC · GWMAT · Bilby (equation-of-state tools) · LALSuite · Cython · MPI · matched filtering · fitting factors · template banks

## Background reading

- Mishra et al. (2024), _Exploring the Impact of Microlensing on Gravitational Wave Signals_
- Harry et al. (2021), _Failure of the Fisher matrix when including tidal terms_
