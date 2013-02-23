---
comments: false
date: 2002-07-23 12:35:07
layout: post
slug: xml-rss-feeding
title: XML – RSS Feeding
wordpress_id: 473
categories:
- Internet
---

Proveer de un archivo XML o RSS para intercambiar titulares de weblogs es un movimiento más que interesante, lo bueno es que fomenta al movimiento de información, nos permite crear un tráfico más fluído… todo se torna muy interesante, por ahora este sitio no extrae titulares de otros lados pero en un futuro lo haría.





Dado un comment de una persona en el post anterior he pasado a mejorar y entender el por que de realizar todo a su medida, para que haya un orden y a la larga obtener beneficios cuando los buscadores indexen mi sitio, el comment es el que paso a transcribir:





> 

> 
> Hola Diego, soy un afiliado a Syndic8.com, un site que fomenta el intercambio de titulares en RSS / XML, y me toco revisar tu site. De momento tu archivos rss o xml ([http://minid.net/index.xml](http://minid.net/index.xml)) no ha sido aprobado ya que no posee bien seteado el lenguaje (actualmente indica que es en-us).
> 
> 






> 

> 
> En mi rol de Fixer me contacto contigo para que lo arregles y asi poder aprobar tu site. Por favor, enviame respuesta a llopez@xinergiaargentina.xxx para aprobar tu site.
> 
> 






Comencemos por averiguar cual es el problema… en el xml que proveo en mi sitio, esta hecho por default en base al template que viene con el Movable Type, al cual le he agregado un Tag de XML para poder definir la version de XML:





bc. 





Luego existe una porción de mi código de XML que especifíca el lenguage de la información que estoy por proveer, en este caso yo poseía `en-US`, lo cual hacía que mi archivo de XML fuera indexado como material con idioma inglés, **esto es un error**.





Imaginense que miles de personas acceden contenidos y buscan información a través de páginas como [Syndic8.com](http://www.syndic8.com), buscando contenidos en castellano, mi material no podría ser encontrado nunca… por que tengo especificado mi contenido como `en-us`, es por eso que debo especificar mi contenido, pero guardia, atentos… tuve que averiguar el cómo y el por qué poner estas cosas… por que no es cuestión de poner `es-spa`, sino que hay que seguir una serie de reglas [ISO 639-1](http://www.loc.gov/standards/iso639-2/langcodes.html), pero si lo que quieres es directamente ir al grano sin aprender por qué se pensaron así, aquí tienes las [listas de idiomas](http://my.netscape.com/publish/formats/rss-spec-0.91.html#langcodes).





O sea que en mi código va a quedar `en-ES`, puede ser en minúsculas pero si lo especifíco usando `ISO 639-1` hay ciertas desventajas, es por eso que deben leer el documento ISO 639-1 para declarar el lenguaje de los contenidos por países.





erminando este episodio, sería espectacular que cada uno que provea de un archivo de XML o RSS, hiciera estos cambios, por el bien de la semantica, el contenido ordenado y las ganas de compartir :).




 
