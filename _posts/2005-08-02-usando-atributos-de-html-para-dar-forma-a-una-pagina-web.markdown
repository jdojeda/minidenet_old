---
comments: false
date: 2005-08-02 07:03:00
layout: post
slug: usando-atributos-de-html-para-dar-forma-a-una-pagina-web
title: Usando atributos de HTML para dar forma a una página web
wordpress_id: 1975
categories:
- Internet
---

En una entrada que hice hace poco se habló de flotar imágenes dentro de una página. El método que recomendamos –sin obligación alguna—es utilizar CSS en vez de utilizar los atributos de HTML. Existen varias razones por las cuales los profesionales de este campo no usan atributos de HTML en sus proyectos para tocar aspectos de una página web:







  1. Separar el contenido de la presentación.


  2. Mayor control y flexibilidad de cambios.


  3. Más posibilidades de posicionamiento que un simple `right`, `left` y `baseline`.


  4. Menos código





#### Separar el contenido de la presentación





El concepto es simple y beneficioso, tanto para el programador, diseñador, jefe de proyecto, gestor de contenidos como para el cliente que utiliza la página. Separar el contenido en una capa de desarrollo y la presentación por otra permite al equipo _trabajar de una forma más flexible_. El gestor de contenidos _escribe y no tiene porque diseñar_. El programador pone etiquetas genéricas y el diseñador con lo que tiene _da forma y vida al tema_. Ninguno de los tres tiene que _aprenderse demasiado la profesión del otro_ y los proyectos saldrán igual.





Los proyectos son independientes desde el primer nivel (el interno) haciendo de éste un lugar ideal para el paso de nuevos talentos. Por ejemplo, si todo está separado, pueden entrar nuevos programadores a trabajar en el proyecto _sin tener que aprenderse grandes detalles de diseño_ o normas gráficas.





#### Mayor control y flexibilidad de cambios





Si no se separa el contenido de la presentación pueden aparecer problemas muy comunes. La falta de control hace que existan variaciones gráficas y de estructura. Con el paso del tiempo, se pueden ver diferentes versiones de material escrito con etiquetas de HTML de varios trabajadores, cada una a su rollo sin seguir una línea. El control visual pasa en manos de todo un equipo en vez de una persona encargada y con _expertise_.





Si no se depende de los atributos de HTML se pueden realizar cambios masivos con resultados increíbles. Fijaros en esta web y verán que las dos mil y pico notas están con la misma línea gráfica.





#### Más posibilidades de posicionamiento que un simple `right`, `left` y `baseline`





Los atributos de HTML no te permiten hacer de forma resumida y ordenada cambios visuales significativos. Además de llenar la página una y otra vez con más _bytes_ de texto que puede ser sustituido con una simple regla en una hoja de estilos que se guardará en el cache del navegador de cada persona, ahorrando cientos de megas de ancho de banda y acelerando la descarga de la página. Volviendo al tema de posibilidades, con una clase se puede hacer más cosas que flotar una imagen hacia una dirección. Se puede poner color de fondo, tamaños, márgenes, naturaleza de las etiquetas, bordes, almohadillas, contenido dinámico, posicionarse de forma fija, relativa, etc.





#### Menos código





_¿Se imaginan una página que tiene 300 fotos listadas y todas con atributos de carácter visual?_ Cuanto código, cuánto trabajo si debes hacerlo a mano. Las páginas que _separan_ el contenido de la presentación siempre pesan menos, siempre tienen _menos_ código encima y son más legibles para corregir o hacer nuevas cosas. No es lo mismo:




    
    <code>&lt;img src="/images/neng.png" alt="Foto" width="51" width="51" valign="top" align="center" border="1" title="¡que pasa neng!" /&gt;</code>





Que esto:




    
    <code>&lt;img src="/images/neng.png" alt="Foto" class="icon"  title="¡que pasa neng!" /&gt;</code>





Podrán observar una cantidad extra de información en el primer ejemplo que luego será repetida la cantidad de veces necesaria en todo el sitio. El segundo en cambio, depende sólo de un valor para tener reacciones gráficas: `class="icon"`.





Algunas entradas que he escrito sobre este tema:







  * [Separando el contenido de la presentación](http://www.minid.net/articulos/116/separando-el-contenido-de-la-prensentacin)


  * [El concepto CSS / Divs](http://www.minid.net/articulos/192/el-concepto-cssdivs)


  * [Un relato de XHTML](http://www.minid.net/articulos/742/un-relato-de-xhtml)


