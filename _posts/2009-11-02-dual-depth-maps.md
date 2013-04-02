---
layout: post
title: 'Dual depth maps'
published: true
---

The main goal for last week was creating dual depth maps. Whereas a regular depth map only captures the z-values that are closest to a camera position, dual depth maps capture the two closest points. When the scene is rendered and shadows have to be calculated, a bias is chosen based on the closest and second closest z-value. Compared to traditional shadow mapping where a fixed bias is used for all pixels, dual shadow mapping allows for an adaptive bias based on scene geometry.

Examples of some dual depth maps:

{:.text-center}
![Dual depth map - Front](/uploads/2010/11/DM1.png)
![Dual depth map - Back](/uploads/2010/11/DDM1.png)
![Dual depth map - Front](/uploads/2010/11/DM2.png)
![Dual depth map - Back](/uploads/2010/11/DDM2.png)
![Dual depth map - Front](/uploads/2010/11/DM3.png)
![Dual depth map - Back](/uploads/2010/11/DDM3.png)
![Dual depth map - Front](/uploads/2010/11/DM4.png)
![Dual depth map - Back](/uploads/2010/11/DDM4.png)
