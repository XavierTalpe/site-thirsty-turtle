---
layout: post
title: 'Multi-Dimensional Hilbert Curve Generator'
published: true
---

After spending the last week on spherical stuff, I'm currently implementing an algorithm to build <strong>Hilbert curves</strong>. My idea of increasing the compression rate for the Coherent Shadow Maps is to use a 3D (possibly 4D) Hilbert curve that will traverse through all my data. Due to its nature, the Hilbert curve is very good at preserving data locality. This in turn affects my compression ratio in a positive way.
[caption id="attachment_104" align="aligncenter" width="400" caption="3D Hilbert Curve"]<img src="http://www.xaviert.be/uploads/2010/10/100317.png" alt="3D Hilbert Curve" title="3D Hilbert Curve" width="400" height="320" class="size-full wp-image-104" />[/caption]
Writing a program that can generate multi-dimensional Hilbert curves for a variety of resolutions is however, far from trivial. Fortunately, a few years ago C. Hamilton wrote a couple of articles on the subject together with a high-level version of the algorithm [1, 2]. Currently I have a CPU version of the basic algorithm working.

In his work, Hamilton also wrote about Compact Hilbert Indices. This allows for Hilbert curves to be applied to non-hypercubic data (a rectangle instead of a square for example). Though a Hilbert curve is still generated for the smallest hypercube fitting around all data, the compact indices don't require as much memory (bits) as their conventional indices. This is the next thing I will implement and once the job is done, I can begin working on the GPU version of the algorithm. I wonder if anyone ever tried that before :).

[1] C. H. Hamilton. <a href="https://www.cs.dal.ca/sites/default/files/CS-2006-07.pdf" target="_blank">Compact Hilbert Indices</a>. Dalhousie University Technical Report CS-2006-07, July 2006.
[2] C. H. Hamilton, A. Rau-Chaplin. <a href="http://flame.cs.dal.ca/~chamilto/hilbert/ipl.pdf" target="_blank">Compact Hilbert Indices: Space-filling curves for domains with unequal side lengths</a>. Information Processing Letters, 105(5), 155--163, Feburary 2008.