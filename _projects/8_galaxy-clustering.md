---
layout: project
title: Galaxy clustering
description: Modelling the projected two-point correlation function of galaxies. A summer group project at TIFR.
img: /assets/img/projects/galaxy-clustering.png
importance: 3
category: earlier
permalink: /projects/galaxy-clustering/
info: Tata Institute of Fundamental Research, Mumbai · Group project with Dr. Shadab Alam · May – August 2024
---

## The question

Galaxies are not scattered randomly. How strongly they cluster as a function of separation encodes both the underlying cosmology and how galaxies populate dark-matter haloes.

Measuring galaxy distances from their redshifts distorts the picture along the line of sight. Integrating the correlation function along the line of sight gives the **projected correlation function** _w_<sub>p</sub>(_r_<sub>p</sub>), which removes these redshift-space distortions and is a standard statistic for galaxy surveys.

## What I did

- **Wrote a model** of the projected correlation function by integrating the redshift-space correlation function from the Core Cosmology Library (**pyccl**) along the line of sight, with linear (Kaiser) redshift-space distortions.
- **Explored how** _w_<sub>p</sub> depends on cosmological parameters and galaxy bias.

## Tools & methods

Python · pyccl · SciPy · Astropy · two-point statistics · redshift-space distortions
