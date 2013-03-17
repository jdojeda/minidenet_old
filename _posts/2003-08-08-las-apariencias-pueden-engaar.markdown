---
comments: false
date: 2003-08-08 10:21:04
layout: post
slug: las-apariencias-pueden-engaar
title: Las apariencias pueden engañar
wordpress_id: 1093
categories:
- Internet
---

He observado un caso en particular sobre la validación de documentos en W3C, muchos desarrolladores sin experiencia en el campo de la validación cuando quieren ingresar al mundo “estándar” tienen una decaída gigante y una depresión debido a la cantidad de errores que hay en una página.





Es sabido entre los que poseen experiencia que un simple error al comienzo del documento puede hacer que el resto del documento dé más errores “falsos” en este caso.





> 

> 
> **Por ejemplo:** Si nos olvidamos de cerrar un tag `&lt;/p&gt;` en la primera línea del documento, todos los tags que le sigan, sean td, table, o p pueden nombrarse o identificarse como posibles errores.
> 
> 






Esto hace que cuando alguien sin experiencia ve un resultado de validación le entre una depresión al ver que su documento **tiene 450 errores por corregir**, además se les hace incomprensible tener que ver la página bien pero su código mal…





El primer consejo es, la herramienta de validación _no es perfecta_, siempre dice la verdad, pero _no explica bien el contexto_ en que se ha generado el error, pero hay que leer bien por que estos casos se solucionan corrigiendo (en la mayoría de los casos) los primeros 2 o 3 errores, entonces de tener 450 “posibles errores” a 0 corrigiendo sólo 2 o 3 problemas, es un pie dentro del mundo de los estándares web.





He escrito esto por que mucha gente ni le interesa validar su trabajo, por que piensa que perderá 10 horas corrigiendo todo cuando realmente está equivocado…





Ahora, anímate y vete a [http://validator.w3.org/](http://validator.w3.org) y corrige esos pocos errores, con un pie dentro ya no te querrás ir de los estándares.




 
