---
layout: post
title: 'Thesis update'
published: false
---

It's been a while since I made a post about my thesis so time to give you guys an update. Since many people probably forgot what my thesis is about, here's a quick recap:

Last semester I've been working on a technique to render <strong>realistic looking shadows</strong> for <strong>non-deformable</strong> objects in 3D scenes and this in <strong>real-time</strong>. The technique I use is called Coherent Shadow Maps and was discovered by Tobias Ritschel in 2007 [1]. In december I had a working implementation of this technique, resulting in pictures like this:
<div class="aligncenter">
<img src="http://www.xaviert.be/uploads/2010/11/Stanford-Dragon-CSM.png" alt="" title="Stanford Dragon CSM" width="350" height="350" class="alignnone size-full wp-image-157" /><p class="wp-caption-text">Stanford Dragon using Coherent Shadow Maps</p>
</div>

A high-level description of how the algorithm works is the following:
<div class="quote">
<strong>1.</strong> Build <strong>shadow maps</strong> around the bounding sphere of an object.
<strong>2.</strong> Exploiting the coherence (similarities) between these shadow maps, they can be compactly <strong>compressed</strong> into one big map.
<strong>3.</strong> During rendering, for every point in the scene:
Pick the shadow map <strong>closest</strong> towards the direction of the light, find it's visibility information in the big map and then check if this point is in shadow or not.
</div>

The goal for this semester is to find improvements for this technique. The main focus will be on increasing my compression ratio. Storing the information of 262.000 shadow maps of the Stanford Dragon still requires 300Mb. Even though the <strong>uncompressed size is 32Gb</strong> (that's around 8 DVD's), it's still way to big for most applications.

The following two weeks I will mainly focus on the <strong>sampling</strong> part (ie. building shadow maps on the bounding sphere of an object) and less on the compression part of the algorithm. Here's my short term list of things to do:

<strong>1.</strong> Check out other <strong>space curves</strong> for sampling the bounding sphere (spiral, Hilbert, ...). More information about this tomorrow.
<strong>2.</strong> Find a way to integrate something like <strong>k-means clustering</strong> or an <strong>adaptive sampling</strong> procedure.
<strong>3.</strong> Find or build a <strong>highly non-coherent object</strong> (like a fractal) for testing purposes.

[1] RITSCHEL, T., GROSCH, T., KAUTZ, J., AND MUELLER, S.
2007. <a href="http://web4.cs.ucl.ac.uk/staff/j.kautz/publications/coherentShadowMapsEGSR07.pdf" target="_blank">Interactive illumination with coherent shadow maps</a>. In
Proceedings of the Eurographics Symposium on Rendering.