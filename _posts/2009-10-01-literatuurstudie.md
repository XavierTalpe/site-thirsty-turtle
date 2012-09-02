---
layout: post
title: 'Litatuurstudie update'
published: true
---

De voorbije dagen heb ik serieus doorgewerkt aan mijn thesis. De uitleg van Jurgen over de Hilbert curve gaf me alvast enkele tips om de problemen die ik maandag nog had, op te lossen.

Een van de problemen was het terugvinden van de schaduwmap die loodrecht staat op, en in dezelfde richting kijkt als, de vector getrokken vanuit de lichtbron richting het oppervlaktepunt `p`. (Zie de figuur [1] hieronder, de drie schuine lijnen met streepjes op stellen shaduwmappen voor.)

{:.center}
![CSM objects](/uploads/2010/11/CSMObjects.png)

Daar schaduwmappen echter te kampen hebben met aliasing, bespreken ze in de paper nog twee verschillende filter technieken (Generalized Percentage Closer Filtering en Russian Roulette). Hiervoor heb ik echter nood aan de 2d dichtste shaduwmappen. Met dichtste bedoel ik dan de schaduwmappen die het dichtst gelegen zijn bij de schaduwmap beschreven in de paragraaf hierboven. Voor een oppervlaktelichtbron houdt dit in dat de 4 (d=2) dichtste shaduwmappen opvraagbaar moeten zijn. Hoe je dit doet is op dit moment nog niet helemaal duidelijk.

[1] RITSCHEL, T., GROSCH, T., KAUTZ, J., AND MUELLER, S.
2007. [Interactive illumination with coherent shadow maps](http://web4.cs.ucl.ac.uk/staff/j.kautz/publications/coherentShadowMapsEGSR07.pdf). In
Proceedings of the Eurographics Symposium on Rendering.
