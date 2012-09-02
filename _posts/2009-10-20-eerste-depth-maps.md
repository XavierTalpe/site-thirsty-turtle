---
layout: post
title: 'Eerste beelden van depth maps'
published: true
---

Na de voorbije weken weinig vooruitgang geboekt te hebben, vliegen we er deze week terug in. Gisterenavond al enkele uren gewerkt aan een script om N depth maps rondom een object te genereren (zie verder). Deze ochtend ben ik eerst op zoek gegaan naar een manier om een OpenGL textuur om te zetten in een PNG/JPG/BMP/... bestand. Kwestie van een beeld te hebben over de correctheid van mijn depth maps. Een paar libraries en enkele uren later heb ik echter nog altijd geen werkende code hiervoor. De belangrijkste library die ik heb geprobeerd was DevIL (aka openIL). Bestanden op schijf inlezen en wegschrijven ging weliswaar vlotjes, maar het omzetten van m'n OpenGL texture blijkt toch iets minder triviaal te zijn.

Aangezien ik niet van plan was om de ganse dag te blijven sukkelen heb ik dan maar verder gewerkt aan het genereren van de depth maps. De bestaande depth map code is ondertussen herwerkt tot eentje die gebruik maakt van Framebuffer Objects, wat alles een pak vlotter moet laten gaan eenmaal er een paar duizenden depth maps gegenereerd moeten worden. Daar ik nu toch wel eens wou weten of mijn depth maps correct waren heb ik het bestaande voorbeeld uit de introductiesessies aangepast. In plaats van een kleurentextuur op de quad te kleven, heb ik er mijn depth map aan gehangen. De resultaten daarvan zie je op onderstaande figuur.

{:.center}
![Stanford Dragon Depth Map](http://www.xaviert.be/uploads/2010/11/Stanford-Dragon-Depth-Map.jpg)

M'n programma om depth maps te genereren rondom een opgegeven model begint ondertussen vorm te krijgen. De stappen die op dit moment aanwezig zijn:
- Inlezen van een opgegeven model.
- Berekenen van een bounding sphere rond het model.
- Genereren van N samples op deze bounding sphere. (Regular sampling over het domein [0, PI] x [0, 2PI].)
- Maken van depth maps via FBO's rondom opgegeven model.

Wat er nog moet gebeuren:
- De gegenereerde samples in Hilbert volgorde plaatsen (maakt het me alvast iets makkelijker voor het comprimeren).
- Opslaan van de N depth maps.
- Maken van dual depth maps (dus de twee dichtste punten bijhouden ipv enkel de dichtste).
- Renderen van schaduwen gebruikmakend van de N depth maps.
- Comprimeren van de depth maps.