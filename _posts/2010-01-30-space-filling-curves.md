---
layout: post
title: 'Space-Filling Curves'
published: true
---

The past two days I've been reading a bit about <a href="http://en.wikipedia.org/wiki/Space-filling_curve" target="_blank">space-filling curves</a>. These are basically curves that allow you to traverse through a 2D (or any N-Dimensional) space without visiting a single point more than once.

You might wonder why these are important. Well, in order to achieve a high compression ratio for my depth maps, I need to find a <strong>highly coherent permutation</strong> of these. This permutation basicly corresponds to the order in which my depth maps are generated and compressed. (For a visual representation of this, check out the movies later on in this post.)

Currently I've been using a <strong>Zig-Zag</strong> curve. Other examples of space-filling curves are a <strong>Spiral</strong> or <a href="http://en.wikipedia.org/wiki/Hilbert_curve" target="_blank"><strong>Hilbert curve</strong></a>. Especially the Hilbert curve is quite known and can be used for a variety of things. Some of the more art-like applications I found on the internet are <a href="http://visualmotive.com/colorsort" target="_blank">color sorting</a> or <a href="http://corte.si/posts/code/hilbert/portrait/index.html" target="_blank">traversing the 3-dimensional RGB cube</a>:
<img src="http://www.xaviert.be/uploads/2010/11/3D-Color-Cube.png" alt="" title="3D Color Cube" width="256" height="256" class="aligncenter size-full wp-image-152" />

Below is a 2D representation of the Zig-Zag, Spiral and Hilbert space-filling curve:
<div class="aligncenter">
<img src="http://www.xaviert.be/uploads/2010/11/zig-zag.jpg" alt="" title="Zig-Zag" width="160" height="160" class="size-full wp-image-146" /><img src="http://www.xaviert.be/uploads/2010/11/Spiral.jpg" alt="" title="Spiral" width="160" height="160" class="size-full wp-image-153" /><p class="wp-caption-text">Zig-zag (left) and spiral (right).</p>
<img src="http://www.xaviert.be/uploads/2010/11/Hilbert-Order-3.jpg" alt="" title="Hilbert (Order 3)" width="160" height="160" class="aligncenter size-full wp-image-154" /><p class="wp-caption-text">Hilbert curve of third order.</p>
</div>

To give you an idea on how these curves are mapped on my 3D sphere:

<div class="aligncenter">
<object width="425" height="344"><param name="movie" value="http://www.youtube.com/v/zkR57962KW4?fs=1&amp;hl=nl_NL"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/zkR57962KW4?fs=1&amp;hl=nl_NL" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="344"></embed></object><p class="wp-caption-text">Spiral</p>
<object width="425" height="344"><param name="movie" value="http://www.youtube.com/v/Sf6-tSn1mmo?fs=1&amp;hl=nl_NL"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/Sf6-tSn1mmo?fs=1&amp;hl=nl_NL" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="344"></embed></object><p class="wp-caption-text">Hilbert</p>
</div>

Of course, what's really important are the <strong>results</strong> of using these new space curves. And unfortunately both the Spiral and Hilbert curve <strong>perform worse</strong> than my original Zig-Zag curve :(. Especially the result for the Hilbert curve suprises me, I really expected an improvement ... 

(Detailed results will follow later.)