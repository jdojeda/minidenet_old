---
comments: false
date: 2005-05-27 13:17:00
layout: post
slug: png-tercera-parte
title: PNG, tercera parte
wordpress_id: 2431
categories:
- Internet
---

![PNG HOWTO SERIES](/images/articulos/png-howto.png)Otra anotación más sobre PNG. Esta vez me he topado con un comportamiento no sé si decir que raro, malo, defectuoso o normal e intencionado. Si tenemos áreas transparentes en nuestra imagen, y la misma está enlazada, observaremos que Internet Explorer quita todo tipo de evento cuando pasamos el cursor sobre la zona transparente, mientras que las zonas donde hay cosas visibles si reaccionan los eventos.





Es raro pero a la vez lo encuentro útil para otras cosas. [Firefox](http://www.mozilla.org/products/firefox/) reaccionó de forma diferente, como de toda la vida vamos… Quizás esto sirva para algunos y tengo un presentimiento de que esto se puede desactivar mediante otro _hack_ al código que estoy utilizando en mi _weblog_.





Entonces, para utilizar PNGs y estar satisfechos con Internet Explorer, tenemos que tener en cuenta:







  1. PNG no está 100% soportado en Internet Explorer. IE 7 tendrá soporte PNG mejorado.


  2. Hay que utilizar un _hack_ con código propietario de Microsoft (pero degrada bien y sin problemas)


  3. Hay ciertas imágenes que se alargan verticalmente (sobre todo las delgadillas)


  4. Llamar los PNGs desde una hoja de estilo hace que el hack del punto 2 no funcione.





Y si te sirve puedes leer el post inicial de [PNG, le noveau plaisir](http://www.minid.net/articulos/2406/png-le-nouveau-plaisir) o el segundo: [PNG, segunda parte](http://www.minid.net/articulos/2418/png-segunda-parte) para completar la idea.
  *[IE]: Internet Explorer
  *[PNG]: Portable Network Graphics
