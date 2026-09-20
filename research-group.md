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

## Members

<table class="cv">
  <thead>
    <tr>
      <th>Name</th>
      <th>Role</th>
      <th>ORCID</th>
    </tr>
  </thead>
  <tbody>
{%- for member in site.data.research_group.members %}
    <tr>
      <td>{{ member.name }}</td>
      <td>{{ member.role }}</td>
      <td><a href="{{ member.orcid_url }}" target="_blank" rel="noopener">{{ member.orcid }}</a></td>
    </tr>
{%- endfor %}
  </tbody>
</table>

## Group publications

The publication record below is shared with the site's main publications list.
Add group-specific records to `_data/publications.yml` as the group publishes
new work.

{% assign years = site.data.publications | map: "year" | uniq | sort | reverse -%}
{%- for y in years %}

<h3 id="group-{{ y }}">{{ y }} <a class="anchor" href="#group-{{ y }}" aria-label="Link to this section">#</a></h3>

<ol class="pub-list">
{%- for pub in site.data.publications %}{% if pub.year == y %}
  <li>
    <span class="pub-authors">{{ pub.authors }}</span>.
    <a class="pub-title" href="https://scholar.google.com/scholar?q={{ pub.title | url_encode }}" target="_blank" rel="noopener">{{ pub.title }}</a>.
    <span class="pub-venue">{{ pub.venue }}</span>.{% if pub.doi != nil and pub.doi != "" %}
    <a class="pub-doi" href="https://doi.org/{{ pub.doi }}" target="_blank" rel="noopener">DOI: {{ pub.doi }}</a>{% endif %}{% if pub.scopus_q != nil and pub.scopus_q != "" %}
    <span class="pub-quartiles">Scopus {{ pub.scopus_q }}</span>{% endif %}{% if pub.wos_q != nil and pub.wos_q != "" %}{% if pub.scopus_q != nil and pub.scopus_q != "" %} · {% endif %}
    <span class="pub-quartiles">WoS {{ pub.wos_q }}</span>{% endif %}{% if pub.cites > 0 %}{% if pub.scopus_q != nil and pub.scopus_q != "" or pub.wos_q != nil and pub.wos_q != "" %} | {% endif %}
    <span class="pub-cites">{{ pub.cites }} cites</span>{% endif %}
  </li>
{%- endif %}{%- endfor %}
</ol>
{%- endfor %}

## Research topics

<ul>
{%- for topic in site.data.research_group.topics %}
  <li>{{ topic }}</li>
{%- endfor %}
</ul>

The group also develops projects involving qualitative and quantitative
methods, structural equation modelling, bibliometric analysis, machine
learning, and theory development.
