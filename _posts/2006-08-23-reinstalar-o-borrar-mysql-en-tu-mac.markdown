---
comments: false
date: 2006-08-23 01:19:01
layout: post
slug: reinstalar-o-borrar-mysql-en-tu-mac
title: Reinstalar o borrar MySQL en tu Mac
wordpress_id: 2932
categories:
- Internet
---

El otro día toqué algo en mi MySQL con temas de usuarios que terminó corrompiendo la tabla de permisos de uso. Lo cual me jodió todo el MySQL en mi instalación de Tiger. Pau se sentó para intentar ayudarme y no pudimos arreglar el tema. Así que una de las soluciones era borrar MySQL en OS X y volver a instalar una copia limpia.





_¿Cómo borro MySQL de un OS X?_





La pregunta del milenio para alguien que no tiene idea de estas cosas. Luego de investigar y pedir consejo al papá Google, caí en un script que lo hace todo. Incluso, hasta diría que es útil para aquel que no le interesa tener MySQL instalado en su ordenador. O por ahí, si en vez de eliminar MySQL quieres quitarlo todo e instalar una nueva versión, puedes hacer esto:





> En una Terminal del Mac OS X escribrimos:
> 
> 

> 
> `curl -O http://www.entropy.ch/software/macosx/mysql/remove-old-mysql.sh`
> 
> 

> 
> Luego de que se haya descargado, simplemente ejecutamos el script:
> 
> 

> 
> `sudo sh remove-old-mysql.sh`
> 
> 

> 
> _Voila!_





Fantástico, en 2 minutos tenía de nuevo MySQL en Tiger, una versión más nuevecita y funcionando debidamente para instalar de nuevo lo que quería.





Espero que les haya sido de utilidad, conocí mucha gente que me había preguntado esto pero, como nunca tuve que llegar a esto no podía responderles.



