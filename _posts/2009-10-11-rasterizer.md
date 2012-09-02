---
layout: post
title: 'Rasterizer framework'
published: true
---

Aangezien het alweer een week geleden is dat ik hier iets gepost heb, even een update over hoe het met m'n thesis gaat. Na een gesprek met Jurgen vorige week werd besloten dat ik mocht beginnen met de implementatie. Naast een heleboel tips gaf Jurgen me ook de raad om te vertrekken van het klassieke shadow-mapping algoritme en dit dan uit te bouwen naar coherente shaduwmappen.

Mijn doelstelling was dan ook om tegen deze avond een dragon te kunnen renderen met eenvoudige shaduwen, maar zover zit ik jammer genoeg nog niet. De reden hiervoor is dat het uitbouwen van mijn "rasterizer framework" nog wel een dagje werk vraagt. Vooral het testen van al m'n klassen met behulp van Visual Studio Team Test was tijdsrovend. Een paar uur moeten zoeken om alles aan de praat te krijgen en vervolgens anderhalf uur spenderen aan een memory bug (`<=` moest `<` zijn) vat de voorbije dagen goed samen. Hoewel m'n unit tests zeker hun nut hebben bewezen (aardig wat memory leaks en destructor issues ontdekt), ging het uitbouwen van m'n framework maar traag vooruit.

Op dit moment heb ik enkel nog de connectie tussen Qt en m'n klassen met vertices ed. uit te bouwen. Als alles goed gaat zou ik tegen morgenavond een dragon kunnen renderen. De shaduwen zullen pas voor dinsdag zijn :).
