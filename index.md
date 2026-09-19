---
layout: default
title: Home
permalink: /
description: "Bui Thanh Khoa, lecturer in the Faculty of Commerce and Tourism at the Industrial University of Ho Chi Minh City. Research in electronic commerce, consumer behaviour, and marketing."
---

<img src="{{ '/assets/images/Khoa2026.jpg' | relative_url }}" alt="Bui Thanh Khoa">

Bui Thanh Khoa is a lecturer in the Faculty of Commerce and Tourism at the
Industrial University of Ho Chi Minh City, and the co-founder and CEO of
Innoteq Co., Ltd.

<p class="lede">His work sits where marketing meets information systems:
electronic commerce, consumer behaviour, online trust, and the use of machine
learning on business data.</p>

Google Scholar records 2,844 citations and an h-index of 26 for his work
(September 2026). He holds a PhD in Business Administration from Ho Chi Minh
City Open University and a master's degree in Business and Economics from
Universite Toulouse 1 Capitole in France.

[Read more about him](/about/), or write to
[buithanhkhoa@iuh.edu.vn](mailto:buithanhkhoa@iuh.edu.vn).

## Selected publications

{% assign top_pubs = site.data.publications | sort: "year" | reverse %}
<ol class="pub-list">
{%- for pub in top_pubs limit: 10 %}
  <li>
    <span class="pub-authors">{{ pub.authors }}</span>.
    <a class="pub-title" href="https://scholar.google.com/scholar?q={{ pub.title | url_encode }}" target="_blank">{{ pub.title }}</a>.
    <span class="pub-venue">{{ pub.venue }}</span>.
    {% if pub.scopus_q != nil and pub.scopus_q != "" %}<span class="pub-quartiles">Scopus {{ pub.scopus_q }}</span>{% endif %}{% if pub.scopus_q != nil and pub.scopus_q != "" and pub.wos_q != nil and pub.wos_q != "" %} · {% endif %}{% if pub.wos_q != nil and pub.wos_q != "" %}<span class="pub-quartiles">WoS {{ pub.wos_q }}</span>{% endif %}
    {% if pub.scopus_q != nil and pub.scopus_q != "" or pub.wos_q != nil and pub.wos_q != "" %} | {% endif %}<span class="pub-cites">{{ pub.cites }} cites</span>
  </li>
{%- endfor %}
</ol>

<p class="meta">The full record, with citation counts, is on the
<a href="{{ '/publications/' | relative_url }}">publications page</a>.</p>

## Recent writing

<ul class="plain">
{%- for post in site.posts limit: 3 %}
  <li class="entry">
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    <span class="source">{{ post.date | date: "%B %-d, %Y" }}</span>
  </li>
{%- endfor %}
</ul>

## Elsewhere

- [Google Scholar](https://scholar.google.com/citations?user=59YSVmEAAAAJ){: target="_blank" } for the full list of papers and citation counts
- [ResearchGate](https://www.researchgate.net/profile/Bui-Thanh-Khoa){: target="_blank" } for full texts and datasets
- [Curriculum vitae](/assets/files/CURRICULUM-VITAE-KhoaBT-21.06.2021.pdf) as a PDF
