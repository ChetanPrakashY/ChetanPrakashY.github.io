---
layout: project
title: Can microlensing mimic tidal effects?
description: Binary neutron-star waveforms under gravitational microlensing, and how easily lensing distortions could be confused with tidal deformability.
img: /assets/img/projects/gw-lensing.png
importance: 2
category: earlier
permalink: /projects/gw-lensing/
info: IUCAA, Pune · with Dr. Anupreeta More · May – August 2024
figures:
- image: /assets/img/projects/figure-placeholder.png
  caption: 'Placeholder: Microlensed vs unlensed signal.'
- image: /assets/img/projects/figure-placeholder.png
  caption: 'Placeholder: Tidal vs microlensing effects.'
---

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

## Tools & methods

Python · PyCBC · GWMAT · Bilby (equation-of-state tools) · LALSuite · Cython · MPI · matched filtering · fitting factors · template banks

## Background reading

- Mishra et al. (2024), _Exploring the Impact of Microlensing on Gravitational Wave Signals_
- Harry et al. (2021), _Failure of the Fisher matrix when including tidal terms_
