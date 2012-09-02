---
layout: post
title: 'Coherent Shadow Maps: Uncompressed Algorithm'
published: true
---

Since it's been a while since I made a blogpost, time to give an update on where I'm at and what I've been doing the past week. So currently I'm working on rendering soft shadows using my pregenerated shadow maps. No (decent) results yet, but it's only a matter of hours before everything is up and running. As a replacement for the missing pictures, let me give you a detailed overview of the algorithm as it's currently implemented:

**Step 1: Find depth map**

So the first step in the algorithm is to find what depth map we want to use for doing the visibility test. Which depth map is chosen depends on:
- The current position **P<sub>f</sub>** of the fragment we're rendering.
- The position **P<sub>l</sub>** of the light source.

Subtracting **P<sub>f</sub>** from **P<sub>l</sub>** gives us **L** = **P<sub>l</sub>** - **P<sub>f</sub>**. The depth map we then want is the one with a viewing direction equal to **-L**. Checking all depth maps for this condition is cumbersome so another method is preferred. Since all depth maps were built around the bounding sphere of an object, we can use their unique (spherical) positions to find the depth map we need. First we scale these spherical positions to the domain [0, 1]2 and then use the fact that all maps were built in Hilbert order. Which means we can assign a unique number to each of them. So if we have 16 depth maps, we can identify them using the numbers zero to 15.

In a 2D texture representing the domain [0, 1]2 it looks like this (black = 0, white = 15):
![Texture](/uploads/2010/11/Texture1.png)

Now how do we go from <strong>L</strong> to [0, 15]? First we convert L from 3D cartesian coordinates to 2D spherical coordinates (theta, phi), scale these to the domain [0, 1]2 and finally retreive the id of the depth map closest to these coordinates. For this a 2D texture of dimensions sqrt(N) x sqrt(N) is used (N is the number of depth maps) and each texel then contains a number in the range [0, N - 1].

**Step 2: Find modelviewprojection matrix**

For fast performance all modelviewprojection matrices are stored in a 2D texture of dimensions 4 * sqrt(*N*) x 4 * sqrt(*N*). For 16 depth maps a colorized version is given below (black = M<sub>00</sub>, white = M<sub>33</sub>):

{:.center}
![Texture](/uploads/2010/11/Texture2.png)

With the id of the depth map known, we can use this number to determine the offset used for retreiving the actual matrix data out of the texture. Once this matrix is built, we use it to transform the position P<sub>f</sub> of the fragment we're rendering.

**Step 3: Do visibility test**
Since I have no compression implemented yet, all depth maps are loaded and stored in two big texture of dimensions Rx * sqrt(*N*) x Ry * sqrt(*N*) (R being the resolution of our depth maps). For 16 depth maps of a Stanford Bunny these are the textures:

{:.center}
![Texture](uploads/2010/11/Texture3.png)
![Texture](uploads/2010/11/Texture4.png)

Determining what depth map to use is again based on the id found in step 1. Using this number an offset can be calculated to find out where a specific depth map is located in the texture. The standard shadow mapping visibility test then tells us wether a fragment is in shadow or not.