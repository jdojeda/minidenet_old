---
comments: true
date: 2009-01-30 13:15:38
layout: post
slug: escribiendo-xhtml-valido-en-textmate
title: Escribiendo XHTML válido en Textmate
wordpress_id: 3380
categories:
- Estándares Web
---

Una cosa que me sacaba el sueño todos los días a la hora de trabajar era corregir ciertas normas de código XHTML en resultado que generaba [Textmate](http://macromates.com) cuando picaba código XHTML usando los bundles que trae. Eran de esas cosas que, a pesar que las hacía de forma natural, rápida (y tampoco atentaba contra mi existencia), me tenía en jaque: _escribir XHTML válido de forma natural y automática con Textmate_.





**Textmate es un editor genial.** A pesar que lo utilizo al 30% de lo que debería, tanto yo como otros desarrolladores usamos Mac principalmente por Textmate. El problema de Textmate es que, la instalación de fábrica utiliza HTML como base como resultado de lo que escribas usando los bundles, snipets y otros atajos.


<!-- more -->




Siendo esto, escribir "input" y que dé como resultado:




    
    <code>&lt;input type=&quot;text&quot; name=&quot;some_name&quot; value=&quot;&quot; id=&quot;some_name&quot;&gt;</code>





Cuando debería ser:




    
    <code>&lt;input type=&quot;text&quot; name=&quot;some_name&quot; value=&quot;&quot; id=&quot;some_name&quot; <strong>/&gt;</strong></code>





Todas estas pequeñas reglitas me quitaban el tiempo. Escribir siempre las barras al final de los elementos me quitaban un montón de tiempo. Además, el 80% de los casos siempre me olvidaba de corregirlas y para cuando corregía el tema había perdido un minuto o dos comprobando a ojo que todos los elementos de los formularios, reglas y otros elementos llevaban la **/** al final.





Pues ayer en casa de [Choan](http://dizque.lacalabaza.net) me enteré de una forma práctica y automática de hacer esto. Hay una forma de cambiar el comportamiento de Textmate cuando escribas elementos que requieren la contra-barra al final. Para ello, debemos ir a las preferencias como lo muestro en esta imagen:





![Preferencias de Textmate](http://www.minid.net/images/preferencias-de-textmate.png)





En la pestaña de _Shell variables_ de las preferencias de Textmate escribimos una nueva variable que diga (exactamente en mayúsculas) "TM_XHTML" y en valor ponemos la barra "/" (sin las comillas). Ahora siempre que escribas código y necesite llevar la barra saldrá como debe, eso sí, no te olvides de anteponer un espacio en el campo de valor porque sino las terminaciones estarán con la barra pegada al último atributo del elemento: ```&lt;input ... id=&quot;some_name&quot;**/&gt;**`





_Et voilà!_
