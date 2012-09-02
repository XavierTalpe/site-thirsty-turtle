---
layout: post
title: 'Hilbert / Spiral Results'
published: true
---

As promised, some results of using different space-filling curves:

**Sphere - 16.384 depth maps:**
Zig-Zag: <span style="color: #00ff00;">6 Mb</span>
Hilbert: <span style="color: #ffff00;">7 Mb</span>
Spiral: <span style="color: #ff0000;">8 Mb</span>

**Sphere - 65.536 depth maps:**
Zig-Zag: <span style="color: #00ff00;">15 Mb</span>
Hilbert: <span style="color: #ffff00;">17 Mb</span>
Spiral: <span style="color: #ff0000;">19 Mb</span>

**Sphere - 262.144 depth maps:**
Zig-Zag: <span style="color: #00ff00;">42 Mb</span>
Hilbert: <span style="color: #ffff00;">43 Mb</span>
Spiral: <span style="color: #ff0000;">51 Mb</span>

**Dragon - 16.384 depth maps:**
Zig-Zag: <span style="color: #00ff00;">61 Mb</span>
Hilbert: <span style="color: #ffff00;">69 Mb</span>
Spiral: <span style="color: #ff0000;">83 Mb</span>

**Dragon - 65.536 depth maps:**
Zig-Zag: <span style="color: #00ff00;">136 Mb</span>
Hilbert: <span style="color: #ffff00;">147 Mb</span>
Spiral: <span style="color: #ff0000;">188 Mb</span>

**Dragon - 262.144 depth maps:**
Zig-Zag: <span style="color: #00ff00;">302 Mb</span>
Hilbert: <span style="color: #ffff00;">308 Mb</span>
Spiral: <span style="color: #ff0000;">420 Mb</span>

Zig-zag still seems the best choice. I also double-checked my Hilbert implementation but unfortunately I didn't find any bugs in it.