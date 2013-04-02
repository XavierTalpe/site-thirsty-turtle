---
layout: post
title: 'Thesis update'
published: true
---

It's been a while since I made a post about my thesis so time to give you guys an update. Since many people probably forgot what my thesis is about, here's a quick recap:

Last semester I've been working on a technique to render **realistic looking shadows** for **non-deformable** objects in 3D scenes and this in **real-time**. The technique I use is called Coherent Shadow Maps and was discovered by Tobias Ritschel in 2007 [1]. In december I had a working implementation of this technique, resulting in pictures like this:

{:.text-center}
![Stanford Dragon CSM](/uploads/2010/11/Stanford-Dragon-CSM.png)

A high-level description of how the algorithm works is the following:

1. Build **shadow maps** around the bounding sphere of an object.
2. Exploiting the coherence (similarities) between these shadow maps, they can be compactly **compressed** into one big map.
3. During rendering, for every point in the scene:
Pick the shadow map **closest** towards the direction of the light, find it's visibility information in the big map and then check if this point is in shadow or not.

The goal for this semester is to find improvements for this technique. The main focus will be on increasing my compression ratio. Storing the information of 262.000 shadow maps of the Stanford Dragon still requires 300Mb. Even though the **uncompressed size is 32Gb** (that's around 8 DVD's), it's still way to big for most applications.

The following two weeks I will mainly focus on the **sampling** part (ie. building shadow maps on the bounding sphere of an object) and less on the compression part of the algorithm. Here's my short term list of things to do:

1. Check out other **space curves** for sampling the bounding sphere (spiral, Hilbert, ...). More information about this tomorrow.
2. Find a way to integrate something like **k-means clustering** or an **adaptive sampling** procedure.
3. Find or build a **highly non-coherent object** (like a fractal) for testing purposes.

[1] RITSCHEL, T., GROSCH, T., KAUTZ, J., AND MUELLER, S.
2007.Interactive illumination with coherent shadow maps](http://web4.cs.ucl.ac.uk/staff/j.kautz/publications/coherentShadowMapsEGS ![R07.pdf). In
Proceedings of the Eurographics Symposium on Rendering.
