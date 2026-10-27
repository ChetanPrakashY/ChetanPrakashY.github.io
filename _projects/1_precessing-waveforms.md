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
- image: /assets/img/projects/mismatch-60msun.png
  after_point: 1
  caption: 'Mismatch between the precessing waveform models IMRPhenomXPHM and IMRPhenomXO4a
    and the numerical-relativity surrogate NRSur7dq4, for binaries with total mass
    60 M☉. Histograms: my reproduction. Points: the published values from Fig. 11
    of Thompson et al. (2024).'
- image: /assets/img/projects/spin-bias-xphm.png
  after_point: 2
  caption: Posterior for the primary spin magnitude a1 from a zero-noise injection
    of a precessing binary black hole (NRSur7dq4, mass ratio 4, total mass 80 M☉,
    both spins 0.8 tilted 80 degrees, network SNR 25, LIGO-Virgo) recovered with IMRPhenomXPHM
    using bilby + nessai. The true value a1 = 0.80 lies far outside the 90% credible
    interval [0.13, 0.43]; none of the 6221 posterior samples reaches it. Because
    there is no noise, the offset is purely due to differences between the two waveform
    models.
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

## Reading list

Papers I've been reading for this project.

**Precessing waveform models**

- Morras et al. (2026), *Post-Newtonian inspiral waveform model for eccentric precessing binaries with higher-order modes and matter effects*
- Hamilton et al. (2025), *PhenomXPNR: An improved gravitational wave model linking precessing inspirals and NR-calibrated merger-ringdown*
- Thompson et al. (2024), *PhenomXO4a: a phenomenological gravitational-wave model for precessing black-hole binaries with higher multipoles and asymmetries*
- Ramos-Buades et al. (2023), *SEOBNRv5PHM: Next generation of accurate and efficient multipolar precessing-spin effective-one-body waveforms for binary black holes*
- Yu et al. (2023), *Accurate and Efficient Waveform Model for Precessing Binary Black Holes*
- Estellés et al. (2022), *New twists in compact binary waveform modelling: a fast time domain model for precession*
- Hamilton et al. (2021), *The final twist: A model of gravitational waves from precessing black-hole binaries through merger and ringdown*
- Pratten et al. (2021), *Computationally efficient models for the dominant and sub-dominant harmonic modes of precessing binary black holes*
- Isoyama et al. (2021), *Post-Newtonian templates for gravitational waves from compact binary inspirals*
- Moore et al. (2018), *A Fourier Domain Waveform for Non-Spinning Binaries with Arbitrary Eccentricity*
- Chatziioannou et al. (2017), *Constructing Gravitational Waves from Generic Spin-Precessing Compact Binary Inspirals*

**Waveform systematics & parameter-estimation biases**

- Copparoni et al. (2026), *When vacuum breaks: a self-consistency test for astrophysical environments in extreme mass ratio inspirals*
- Chandramouli et al. (2025), *Systematic biases due to waveform mismodeling in parametrized post-Einsteinian tests of general relativity: The impact of neglecting spin precession and higher modes*
- Kumar et al. (2025), *Accounting for the Known Unknowns: A Parametric Framework to Incorporate Systematic Waveform Errors in Gravitational-Wave Parameter Estimation*
- Mezzasoma et al. (2025), *Uncertainty-aware waveform modeling for high signal-to-noise ratio gravitational-wave inference*
- Kapil et al. (2024), *Systematic bias from waveform modeling for binary black hole populations in next-generation gravitational wave detectors*
- Owen et al. (2023), *Waveform accuracy and systematic uncertainties in current gravitational wave observations*
- Harry et al. (2016), *Searching for Gravitational Waves from Compact Binaries with Precessing Spins*
- Moore & Gair (2014), *Novel Method for Incorporating Model Uncertainties into Gravitational Wave Parameter Estimates*
- Cutler & Vallisneri (2007), *LISA detections of massive black hole inspirals: parameter extraction errors due to inaccurate template waveforms*

**Fisher matrix & forecasting**

- Dupletsa et al. (2025), *Validating Prior-informed Fisher-matrix Analyses against GWTC Data*
- García-Quirós et al. (2025), *GPU-accelerated LISA parameter estimation with full time domain response*
- Dupletsa et al. (2023), *GWFish: A simulation software to evaluate parameter-estimation capabilities of gravitational-wave detector networks*
- Iacovelli et al. (2022), *GWFAST: a Fisher information matrix Python code for third-generation gravitational-wave detectors*
- Harry & Lundgren (2021), *Failure of the Fisher matrix when including tidal terms: Considering construction of template banks of tidally deformed binary neutron stars*
- Ajith et al. (2014), *Effectual template bank for the detection of gravitational waves from inspiralling compact binaries with generic spins*
- Cutler & Flanagan (1994), *Gravitational Waves from Merging Compact Binaries: How Accurately Can One Extract the Binary's Parameters from the Inspiral Waveform?*
