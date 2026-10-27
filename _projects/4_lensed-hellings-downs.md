---
layout: project
title: Lensing of nanohertz gravitational waves
description: What happens to the Hellings–Downs curve when we try to account for
  lensing in pulsar-timing-array signal.
info: 2026 – present
status: Exploratory project
category: current
importance: 4
img: /assets/img/projects/lensed-hellings-downs.png
permalink: /projects/pta-lensing/
figures:
  - image: /assets/img/projects/figure-placeholder.png
    caption: Placeholder. This will show the pulsar-pair correlation for a lensed
      source at several frequencies, compared with the unlensed Hellings–Downs
      curve.
---
## The question

Pulsar timing arrays detect gravitational waves through a characteristic pattern: the timing residuals of two pulsars are correlated in a way that depends only on the angle between them. This is the **Hellings–Downs curve**, the smoking-gun signature of a gravitational-wave background.

At nanohertz frequencies the gravitational wavelength is comparable to the Schwarzschild radius of a galaxy-scale lens (10¹⁰–10¹³ solar masses). Lensing then happens in the **wave-optics (diffractive)** regime, not the familiar geometric-optics one. I'm asking whether, and how, lensing distorts the Hellings–Downs correlation as a function of pulsar geometry, lens properties and frequency.

## Progress

- **Point-mass lenses:** computing the wave-optics amplification factor analytically and mapping it across the PTA band (10⁻⁹–10⁻⁷ Hz), for a range of lens masses and impact parameters. This separates the diffraction and interference regimes.
- **Singular isothermal sphere lenses:** Studying the effects of SIS model 
- **Lensed Hellings–Downs curves:** computing how the pulsar-pair correlation changes with each pulsar's position relative to the lens and with the dimensionless frequency, and checking that the result reduces to the standard curve without lensing.
- **Numerical diagnostics:** mapping where the amplification-factor grid can be trusted.

## Tools & methods

Python · mpmath · SciPy · h5py · point-mass and isothermal-sphere lens models · wave-optics amplification factor · Hellings–Downs correlation

## Background reading

- Takahashi & Nakamura (2003), *Wave Effects in Gravitational Lensing of Gravitational Waves from Chirping Binaries*
- Nakamura & Deguchi (1999), *Wave Optics in Gravitational Lensing*
- Ma et al. (2023), *Diffractive lensing of nano-Hertz gravitational waves emitted from supermassive binary black holes by intervening galaxies*
- Allen (2023), *Variance of the Hellings–Downs correlation*

