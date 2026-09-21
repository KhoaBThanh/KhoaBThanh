---
layout: page
title: Research Group
permalink: /research-group/
description: "Business and Management Research Group: members, publications, and research topics."
---

The **Business and Management Research Group** brings together researchers
working on business, management, marketing, information systems, and related
questions in emerging markets. The group supports collaborative research,
methodological development, and the practical application of research findings.

## Members by phase

{%- for group in site.data.research_group.groups %}

### {{ group.period }}

<ul class="plain">
{%- for member in group.members %}
  <li class="entry">
    <span class="entry-title">{{ member.name }}</span>
    <span class="source">{{ member.role }}{% if member.orcid != nil and member.orcid != "" and member.orcid != "0000-0000-0000-0000" %} · ORCID: <a href="{{ member.orcid_url }}" target="_blank" rel="noopener">{{ member.orcid }}</a>{% endif %}</span>
  </li>
{%- endfor %}
</ul>

{%- endfor %}

## Research topics

<ul>
{%- for topic in site.data.research_group.topics %}
  <li>{{ topic }}</li>
{%- endfor %}
</ul>

## Sample publications

<ul class="plain">
{%- for pub in site.data.research_group.sample_publications %}
  <li class="entry">
    <span class="entry-title">{{ pub.authors }}. {{ pub.title }}</span>
    <span class="source">{{ pub.venue }} ({{ pub.year }}){% if pub.doi != nil and pub.doi != "" %} · DOI: {{ pub.doi }}{% endif %}</span>
  </li>
{%- endfor %}
</ul>

