---
layout: page
title: Publications
permalink: /publications/
description: "Journal articles, conference papers, and datasets by Bui Thanh Khoa on electronic commerce, consumer behaviour, and marketing."
---

Journal articles, conference papers, and datasets on electronic commerce,
consumer behaviour, and marketing. Author names follow the source record.

<p class="meta">
Google Scholar, 19 September 2026: 2,844 citations, h-index 26, i10-index 64.
Entries are grouped by year and ordered by citation count. Each title links to
a Google Scholar search. Some 2026 items appeared online first and may still be
in press.
</p>

{% assign years = site.data.publications | map: "year" | uniq | sort | reverse -%}
{%- for y in years %}

<h2 id="{{ y }}">{{ y }} <a class="anchor" href="#{{ y }}" aria-label="Link to this section">#</a></h2>

<ol class="pub-list">
{%- for pub in site.data.publications %}{% if pub.year == y %}
  <li>
    <span class="pub-authors">{{ pub.authors }}</span>.
    <a class="pub-title" href="https://scholar.google.com/scholar?q={{ pub.title | url_encode }}" target="_blank">{{ pub.title }}</a>.
    <span class="pub-venue">{{ pub.venue }}</span>.{% if pub.cites > 0 %}
    <span class="pub-cites">{{ pub.cites }} cites</span>{% endif %}
  </li>
{%- endif %}{%- endfor %}
</ol>
{%- endfor %}

## Full record

- [Google Scholar profile](https://scholar.google.com/citations?user=59YSVmEAAAAJ){: target="_blank" }
- [ResearchGate profile](https://www.researchgate.net/profile/Bui-Thanh-Khoa){: target="_blank" }
- [ORCID 0000-0002-9878-2164](https://orcid.org/0000-0002-9878-2164){: target="_blank" }
