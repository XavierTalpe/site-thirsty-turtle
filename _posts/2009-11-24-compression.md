---
layout: post
title: 'Compression, first tests looking good!'
published: true
---

256 depth maps, 32 samples per pixel.

{:.text-center}
![Stanford Bunny Uncompressed](/uploads/2010/11/Stanford-Bunny-Uncompressed.png)

{:.text-center}
Stanford Bunny Uncompressed

{:.text-center}
![Stanford Bunny Compressed](/uploads/2010/11/Stanford-Bunny-Compressed.png)

{:.text-center}
Stanford Bunny Compressed

Red areas indicate difference with the uncompressed version. In general I have less noise/self-shadowing, but some trivial points on the bunny are now miscalculated. It might have something to do with a special case where my current implementation of the compression algorithm isn't a 100% correct.

Before I'm going any higher in my number of depth maps (read: 64k and up), the throughput of my compression pipeline should increase. For the record, the implementation of Tobias et al. requires only a couple of seconds to compress 1024 depth maps. Mine requires around one hour :).
