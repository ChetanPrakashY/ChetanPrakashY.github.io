---
layout: page
permalink: /activities/
title: activities
description: Outreach, science communication and student leadership at IISER Berhampur.
nav: true
nav_order: 4
toc:
  sidebar: left
---

<!-- Content lives in _data/activities.yml (edit it in Pages CMS → "Activities"). -->

{% for s in site.data.activities.sections %}

## {{ s.title }}

{% if s.role != blank or s.dates != blank %}<p><strong>{{ s.role }}</strong>{% if s.role != blank and s.dates != blank %}, {% endif %}{{ s.dates }}</p>{% endif %}

{{ s.text | markdownify }}

{% if s.photos and s.photos.size > 0 %}

{% assign n = s.photos.size %}{% if n > 3 %}{% assign n = 3 %}{% endif %}{% assign w = 12 | divided_by: n %}

<div class="row">
  {% for ph in s.photos %}
  <div class="col-sm-{{ w }} mt-3">
    {% include figure.liquid path=ph.image title=ph.caption class="img-fluid rounded z-depth-1" zoomable=true %}
    <div class="caption">{{ ph.caption }}</div>
  </div>
  {% endfor %}
</div>
{% endif %}
{% endfor %}

## Recognition

<table class="table table-sm table-borderless">
  {% for r in site.data.activities.recognition %}
  <tr><th scope="row" style="width: 20%">{{ r.date }}</th><td>{{ r.title }}</td></tr>
  {% endfor %}
</table>
