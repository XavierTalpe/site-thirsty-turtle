---
layout: default
published: false
---

Last week I've created a small program which allows me to render all of my compressed depth maps separately. This way I can manually look at each depth map and get an idea of how correct they are. I also implemented a way to render what I call <strong>Coherence Maps</strong>. These maps give an idea on how coherent each pixel is over all depth maps. When a pixel is white, it means that the depth value for this pixel is the same for all depth maps, and thus we have perfect coherence. A black pixel means the opposite, namely a lot of variation in the depth values for that pixel. This means a low coherence and low compression rate.

Some examples of these coherence maps are shown below:
<div class="aligncenter">
<img src="http://www.xaviert.be/uploads/2010/11/coherence-map-dragon.png" alt="Coherence Map for Stanford Dragon" title="coherence-map-dragon" width="128" height="128" class="size-full wp-image-139" /><img src="http://www.xaviert.be/uploads/2010/11/coherence-map-sphere.png" alt="Coherence Map of Sphere" title="coherence-map-sphere" width="128" height="128" class="size-full wp-image-140" /><p class="wp-caption-text">Stanford Dragon (left) and Sphere (right)</p>
<img src="http://www.xaviert.be/uploads/2010/11/coherence-map-teapot.png" alt="Coherence Map for Utah Teapot" title="coherence-map-teapot" width="128" height="128" class="size-full wp-image-141" /><img src="http://www.xaviert.be/uploads/2010/11/coherence-map-bunny.png" alt="Coherence Map of Stanford Bunny" title="coherence-map-bunny" width="128" height="128" class="size-full wp-image-138" /><p class="wp-caption-text">Utah Teapot (left) and Stanford Bunny (right)</p>
</div>