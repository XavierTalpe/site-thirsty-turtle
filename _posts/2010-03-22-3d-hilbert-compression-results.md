---
layout: post
title: 3D Hilbert Compression Results
---

Last week I had a working implementation of the n-dimensional Hilbert algorithm. Next step was using a 3D Hilbert curve on my depth maps. Goal: <strong>further increase the compression ratio of my depth maps</strong>. I had already done some tests with this kind of curve two weeks ago and back then the results were interesting enough to do some further experimenting.

Due to implementation issues back then, I was however limited to a curve of (27)3 elements. For 1024 depth maps with a resolution of 128x128 pixels this came down to 8 cubes of (27)3 elements (1024x128x128 = 224 = (27)3 x 23). With my new implementation this restriction is gone and I can generate Hilbert curves up to (210)3 (going any higher would require the use of 64 bits integers, which would only slow down my computations, something that is to be avoided as much as possible).

These are the currently best results:

{:.center .quote}
![3D Hilbert Compression vs Per-Pixel Compression](/uploads/2010/10/100322b.png)

As can be seen from this graph, the **3D Hilbert compression** outperforms the per-pixel compression for anything below 9216 (962) depth maps. Beyond that per-pixel compression is still the way to go. Two weeks ago I thought that this could possibly be solved by increasing the resolution of my Hilbert curve (and thus reducing the amount of cubes necessary to browse through all my data). Last week I got more insight in the recursive nature of the Hilbert curve and had a suspicision that the size of my cubes (and the resolution of the Hilbert curve) wouldn't matter that much. The thing is, a Hilbert curve of a higher resolution is basically a concatenation of rotated versions of a lower resolution Hilbert curve. So the difference between one cube of a high resolution and two cubes of lower resolution is merely a rotation. And due to it's nature, the effect of these rotations are minimal.

{:.center}
{% thumbnail [Hilbert Curve][/uploads/2010/10/100322a.png] %}

{:.caption}
(Left) 2D Hilbert curve of order 1. (Middle) Hilbert curve of order 2. This consists of four rotated order 1 curves (corners) that are connected with each other. (Right) Order 3 curve, consists of four rotated order 2 curves.

This theory is also confirmed in practice. The results for higher resolution Hilbert curves are nearly identical to those given above (up to some KB).
