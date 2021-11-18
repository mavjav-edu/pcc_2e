---
layout: default
title:  Images
nav_exclude: true
parent: A Ship That Fires Bullets
grand_parent: Home
---

This folder contains images you can use for your game.

- [Spaceships](#spaceships)
- [Background](#background)

## Spaceships

Here are some spaceship glyphs to choose from.

<div id="grid-col">

{% assign ships = site.static_files | where_exp: "item", "item.path contains '/chapter_12/images/spaceships'" %}
{% for ship in ships %}
    <div class="cell"> <img src="{{ship.path | relative_url}}" alt="Spaceship #{{ forloop.index }}" width="66"> </div>
{% endfor %}
</div>

## Background

Here is a background you can use:

<img src="./sky.svg" alt="Night Sky" width="166">
