---
layout: page
title: Projects
permalink: /projects/
description: "Projects and initiatives led by Bui Thanh Khoa."
---

Projects and initiatives in technology, education, and research.

<ul class="plain">
{%- for project in site.projects %}
  <li class="entry">
    <a href="{{ project.url | relative_url }}">{{ project.title }}</a>
    <span class="source">{{ project.role }}</span>
  </li>
{%- endfor %}
</ul>
