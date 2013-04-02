---
layout: post
title: 'Shadows and Dragons'
published: true
---

The last days I've been trying to get my shadows up and running, with succes. Using an exported version of one of the depth maps, I can render shadows in my scene. One thing that suprised me was the huge amount of aliasing shadow mapping creates:

{:.text-center}
![Dragon](/uploads/2009/10/Dragon5.png)
![Dragon](/uploads/2009/10/Dragon6.png)

Despite it being a nice effect, there is just to much self-shadowing going on. A solution for this is to set a (small) bias to prevent self-shadowing. Currently the bias is set at 0.25, which gives fare more pleasing results:

{:.text-center}
![Dragon](/uploads/2009/10/Dragon7.png)
![Dragon](/uploads/2009/10/Dragon8.png)
![Dragon](/uploads/2009/10/Dragon9.png)

I also tried perspective shadow maps, but these have far different (read: worse) results. I already spend hours on trying to fix this, but so far I have no idea what could be the problem.

{:.text-center}
![Dragon](/uploads/2009/10/Dragon10.png)
