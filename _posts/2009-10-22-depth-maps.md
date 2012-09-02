---
layout: default
published: false
---

After spending the entire yesterday afternoon I'm finally able to export my depth maps to JPG files using the DevIL library. It took me some time to extract the correct information out of the GPU, but now I can fluently export to JPG, TGA and others. (Why PNG doesn't work is still a mystery.) I also added the Hilbert enumeration and a few other minor things. Hilbert enumeration basicly order elements in such way that there is a minimal difference between previous and next elements. For a 2D square this looks like a zig-zag curve<sup>1</sup>:

{:.center}
![Zig-zag curve](http://www.xaviert.be/uploads/2010/11/Zig-Zag-Curve.png)

To give you an idea of what Hilbert enumeration on a 3D sphere looks like, I've added two movies below. These show 1024 orthographic depth maps taken of the Stanford dragon. The first movie uses orthographic projection, the second uses perspective projection.

{% youtube gJoJtGZi4Nc %}
{% youtube 8Re3EWLeUXQ %}

[1] RITSCHEL, T., GROSCH, T., KAUTZ, J., AND MUELLER, S.
2007. <a href="http://web4.cs.ucl.ac.uk/staff/j.kautz/publications/coherentShadowMapsEGSR07.pdf" target="_blank">Interactive illumination with coherent shadow maps</a>. In
Proceedings of the Eurographics Symposium on Rendering.