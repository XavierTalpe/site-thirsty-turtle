---
layout: post
title: 'Dual depth maps'
published: true
---

The main goal for last week was creating dual depth maps. Whereas a regular depth map only captures the z-values that are closest to a camera position, dual depth maps capture the two closest points. When the scene is rendered and shadows have to be calculated, a bias is chosen based on the closest and second closest z-value. Compared to traditional shadow mapping where a fixed bias is used for all pixels, dual shadow mapping allows for an adaptive bias based on scene geometry.

Examples of some dual depth maps:
<div class="aligncenter">
<img src="http://www.xaviert.be/uploads/2010/11/DM1.png" alt="" title="DM1" width="192" height="192" class="size-full wp-image-207" /><img src="http://www.xaviert.be/uploads/2010/11/DDM1.png" alt="" title="DDM1" width="192" height="192" class="size-full wp-image-208" />
<img src="http://www.xaviert.be/uploads/2010/11/DM2.png" alt="" title="DM2" width="192" height="192" class="size-full wp-image-209" /><img src="http://www.xaviert.be/uploads/2010/11/DDM2.png" alt="" title="DDM2" width="192" height="192" class="size-full wp-image-210" />
<img src="http://www.xaviert.be/uploads/2010/11/DM3.png" alt="" title="DM3" width="192" height="192" class="size-full wp-image-211" /><img src="http://www.xaviert.be/uploads/2010/11/DDM3.png" alt="" title="DDM3" width="192" height="192" class="size-full wp-image-212" />
<img src="http://www.xaviert.be/uploads/2010/11/DM4.png" alt="" title="DM4" width="192" height="192" class="size-full wp-image-213" /><img src="http://www.xaviert.be/uploads/2010/11/DDM4.png" alt="" title="DDM4" width="192" height="192" class="size-full wp-image-214" />
</div>