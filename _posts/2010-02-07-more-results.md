---
layout: post
title: 'More Results'
published: true
---

In my attempt to find out why the Hilbert curve doesn't give better results than the Zig-Zag one, I experimented a bit with rotated versions of my path-filling curves. Instead of going from left to right, I tried going up and down (= 90° rotation). A 2D representation of this:

{:.text-center}
![Zig-zag](/uploads/2010/11/zig-zag.jpg)
![Zig-zag rotated](/uploads/2010/11/zig-zag-rotated.jpg)

{:.text-center .caption}
Original Zig-Zag (left) and the 90° CCW rotation (right)

The result of this simple rotation however is quite shocking. With the original curve my compressed map was **136Mb**, with the rotated version it was **244Mb**! Yes, that's almost twice as big!

Of course, the real question is: why is there such a big difference between both maps? The answer: because **my sampled points aren't equidistant** in (theta, phi)-space. To sample the entire surface of the bounding sphere surrounding my object, I first build a regular sampled grid in the [0, 1]2 square and then scale this up to [0, PI] x [0, 2PI]. Et voila, instead of equidistant points in my square, we get a **rectangular surface** with non-equidistant points (green and blue arrow):

{:.text-center}
![Equidistant](/uploads/2010/11/equidistant.jpg)

As the distance between vertically-aligned points (blue) is larger than for horizontally-aligned points (green), this means there are also more differences between the vertically-aligned points and thus less coherence and worse compression. This explains why the rotated version of the Zig-Zag curve performs worse than the original version. Because we're moving in the vertical direction the majority of the time, the compression rate decreases dramatically. One might think that increasing the number of samples minimizes this problem, but the previously mentioned results already used 65.536 depth maps, hardly a small sample size.

I also tried rotated versions of the linear curve and the Hilbert curve. Results are given below, but they are hardly worth mentioning:

**Stanford Dragon, 65.536 depth maps:**

Zig-Zag: 136Mb
Zig-Zag 90° CCW: 244Mb

Hilbert: 147Mb
Hilbert 90° CCW: 147Mb
Hilbert 180° CCW: 147Mb
Hilbert 270° CCW: 147Mb

Linear: 145 Mb
Linear 90°CCW: 248Mb
