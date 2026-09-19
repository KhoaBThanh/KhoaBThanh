---
layout: page
title: Blog
permalink: /blog/
description: "Short notes and reflections by Bui Thanh Khoa."
---

Notes and reflections, newest first.

<ul class="plain">
{%- for post in site.posts %}
  <li class="entry">
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    <span class="source">{{ post.date | date: "%B %-d, %Y" }}{% if post.tags.size > 0 %} &middot; {{ post.tags | join: ", " }}{% endif %}</span>
  </li>
{%- endfor %}
</ul>

<p class="meta">Subscribe with the <a href="{{ '/feed.xml' | relative_url }}">RSS feed</a>.</p>
