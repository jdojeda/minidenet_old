---
comments: false
date: 2006-01-02 18:45:59
layout: post
slug: patrones-de-diseno
title: Patrones de diseño
wordpress_id: 2707
categories:
- Internet
---

 

¿Patrones? ¿Qué demonios es eso? A veces ocurre, y no es pedantería alguna, que desarrolladores no sepan esto. Es normal y corriente que no se sepa -a conciencia- que los patrones son materia importante en la arquitectura, diseño y codificación de aplicaciones. Esto tampoco es el fin, todos diseñamos o creamos cosas con patrones, pasa que, no lo hacemos a sabiendas. Se pueden leer excelentes y completos artículos en inglés sobre patrones en internet. Pero aquí intentaré introducirles, mencionarles apenas las cosas esenciales para que luego den el pasito. Créanme, dominar esto en cualquier área ayuda MUCHO.





#### La definición



  

Un patrón describe un problema que ocurre de forma repetida y sin parar... y después describe la base de la solución a ese problema, de una manera tal que uno puede utilizar esta solución un millón de veces.



  

Una frase que me encanta cuando hablo de patrones de diseño es de Richard Gabriel, autor del libro Patterns of Software: Tales From the Software Community que dice:



  

> Each pattern is a three-part rule, which expresses a relation between a certain context, a problem, and a solution.



  

#### Un simple ejemplo de patrones



  

Tenía un cliente con un CMS grande como una casa. Éste CMS generaba contenido no accesible, por ende (y para acometer la validación) tuve que investigar los problemas y el contexto en que se encontraba todo. Así de esta forma supe lo que tenía que cambiar y de la mejor forma. Me quedó algo así:





> Escritura → guardado → filtrado y corrección automática → publicación



  

De esta forma, la gente no se tenía que aprender nada. Ni códigos, ni nada. Simplemente tenían que seguir escribiendo como todos los días. Para evitar futuros problemas, bastó con generar reglas nuevas de publicación y de esta forma, cuando un editor escribía la vertu se côtoient no salía codificado en HTML sino que aprovechara las bondades de UTF, evitando así, futuros errores de validación WAI y W3C en muchos casos.



  

Este es sólo un ejemplo simple de patrones de diseño. Existen aplicaciones para todas las disciplinas, incluida la programación. Si tienes alguna historia relacionada con el tema puedes dejar un comentario y compartir más sobre el tema.



  

Más en la [Wikipedia](http://www.wikipedia.org) en [Design pattern (architecture)](http://en.wikipedia.org/wiki/Design_pattern_%28computer_science%29)
