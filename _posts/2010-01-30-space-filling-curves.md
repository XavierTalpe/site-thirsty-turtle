---
layout: post
title: 'Space-Filling Curves'
published: true
---

The past two days I've been reading a bit about [space-filling curves](http://en.wikipedia.org/wiki/Space-filling_curve). These are basically curves that allow you to traverse through a 2D (or any N-Dimensional) space without visiting a single point more than once.

You might wonder why these are important. Well, in order to achieve a high compression ratio for my depth maps, I need to find a **highly coherent permutation** of these. This permutation basicly corresponds to the order in which my depth maps are generated and compressed. (For a visual representation of this, check out the movies later on in this post.)

Currently I've been using a **Zig-Zag** curve. Other examples of space-filling curves are a **Spiral** or **[Hilbert curve](http://en.wikipedia.org/wiki/Hilbert_curve)**. Especially the Hilbert curve is quite known and can be used for a variety of things. Some of the more art-like applications I found on the internet are [](http://visualmotive.com/colorsort) or [traversing the 3-dimensional RGB cube](http://corte.si/posts/code/hilbert/portrait/index.html):

{:.text-center}
![3D Color Cube](/uploads/2010/11/3D-Color-Cube.png)

Below is a 2D representation of the Zig-Zag, Spiral and Hilbert space-filling curve:

{:.text-center}
![Zig-Zag](/uploads/2010/11/zig-zag.jpg)
![Spiral](/uploads/2010/11/Spiral.jpg)

{:.text-center .caption}
Zig-zag (left) and spiral (right).

{:.text-center}
![Hilbert (Order 3)](/uploads/2010/11/Hilbert-Order-3.jpg)

{:.text-center .caption}
Hilbert curve of third order.

To give you an idea on how these curves are mapped on my 3D sphere:

{% youtube zkR57962KW4 %}

{:.text-center .caption}
Spiral

{% youtube Sf6-tSn1mmo %}

{:.text-center .caption}
Hilbert

Of course, what's really important are the **results** of using these new space curves. And unfortunately both the Spiral and Hilbert curve **perform worse** than my original Zig-Zag curve :(. Especially the result for the Hilbert curve suprises me, I really expected an improvement ... 

(Detailed results will follow later.)
