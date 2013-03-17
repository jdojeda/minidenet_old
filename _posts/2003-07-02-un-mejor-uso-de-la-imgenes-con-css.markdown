---
comments: false
date: 2003-07-02 21:39:32
layout: post
slug: un-mejor-uso-de-la-imgenes-con-css
title: Un mejor uso de la imágenes con CSS
wordpress_id: 1035
categories:
- Internet
---

Hace unos meses [Monitotxi](http://www.minid.net/archivos/categorias/css/un_uso_mas_practico_y_semantico_del_blockquote.php#a2784) ha dado un buena idea para aprovechar la semántica de las imágenes con CSS, a partir un otra técnica que había explicado [usando un `blockquote`](http://www.minid.net/archivos/categorias/css/un_uso_mas_practico_y_semantico_del_blockquote.php), utilizando la misma técnica, un poco de CSS 2 podemos ponerle un pie de texto a todas las fotos, imágenes que usamos en la web.





Por supuesto esto funciona en la mayoría de los navegadores que soportan bien CSS 2, Opera para generar contenido y auto numeración de elementos es el mejor y el más completo, le sigue Mozilla, Firebird, y al final de todo IE.





Para que entiendan un poco el efecto final, pueden ver este post de [Porrons i Calçots](http://www.minid.net/archivos/categorias/personal/porrons_i_calots.php), donde sale una imagen y debajo de la misma sale una descripción.





Lo primero que tenemos que hacer es ir a nuestra plantilla de CSS y crear una clase para las fotografías por ejemplo `img.foto`, luego abrimos llaves para copiar y pegar lo que he escrito abajo:




    
    img.foto:after {
    
    <p>display: block;</p>
      content: attr(alt);
    font: 9px geneva, tahoma, verdana, arial, sans-serif;
    color: #666;
    
    <p>}





Ese fue el primer paso, ahora pasamos al código en XHTML de vuestra página:




    
    
    
    <p>&lt;h3&gt;Este es un titular&lt;/h3&gt;</p>
    
    <p>&lt;p&gt;Este es un texto de prueba como pueden observar, es un
    texto muy simple, como el de un post.&lt;/p&gt;</p>
    
    <p>&lt;p&gt;&lt;img src="aquawindow.png" alt="Ventana Aqua" class="foto" /&gt;&lt;/p&gt;





Muy bien, era fácil, ahora viene la explicación técnica de todo esto. El texto en XHTML representa básicamente la estructura de un post, por ejemplo el tag `&lt;h3&gt;` representa el titulo de un blog y el tag `&lt;p&gt;` el texto que escribimos, y la imagen es el tag que escribimos en un nuevo párrafo, por eso está también encerrado en un &lt;p&gt;.





La imagen tiene que tener si o si la llamada a la clase, por ejemplo, en este caso cuando habíamos escrito en el css `img.foto`, foto es el nombre de la clase así que en el XHTML escribiremos `class="foto"`, luego para comprender el efecto del CSS tenemos que remitirnos a este comando llamado `content:`, que es un tag que genera contenido a partir de un atributo de un tag de XHTML o un contenido que nosotros escribimos, de modo que si esta línea `content: attr(alt);` hace todo el trabajo de extracción del contenido del atributo `alt="…"` y lo escribe en la página cada vez que se cargue, si mágico.





El comando `content:` como había explicado anteriormente genera contenido, es por eso que yo he puesto que me genere el contenido (`content: attr(alt);`) a partir de el atributo `alt="…"` que yo escriba en cada imagen que yo suba a mi weblog.





Luego puede ir viendo otras propiedades que yo le he dado a la imagen para que llegue a tener un pie de página, una de ellas es la propiedad de visualización `display: block`, he usado `block` por que al ser una imagen de bloque por la fuerza creará una línea nueva cada vez que un objeto le siga, entonces si la lógica dice que un elemento en línea como la imagen le sigue un texto este saldría uno al lado del otro, pero si la imagen es de bloque, saldría la imagen primero alineada a la izquierda y luego en una nueva línea el texto generado.





Yo he logrado experimentar bastante con el tema de centrar imágenes, lo cual es muy fácil cuando tienen la propiedad por defecto de `display: inline;`, pero cuando las convertimos a bloque `display: block;`, la imagen por defecto se lanza hacia la izquierda… de modo que podemos hacer un hack bonito:




    
    img.foto {
    padding: 3px;
    display: block;
    &lt;strong&gt;margin-left: auto;
    margin-right: auto;&lt;/strong&gt;
    }





He hecho que el elemento en bloque se mantuviera en el medio con márgenes automáticos, por que mi sitio tiene un diseño líquido, entonces el cuerpo de las notas puede variar, con `margin-left: auto;` y `margin-right: auto;`, soluciono este otro problema y ya puedo centrar las imágenes.





Ahora, esto está hecho para funcionar en un weblog, ¿Se imaginan todas las aplicaciones que puede tener esto? Pues yo me estoy imaginando unas cuantas… además de ahorrarnos escribir 2 veces lo mismo para tener un pie de página esto ya sirve y haciéndolo una sola vez.





Por cierto, si tienen algunas dudas, pueden mirar mi [hoja de estilos](http://www.minid.net/css/main.css) y verificar alguno de los hacks escritos en esta nota.





Este truco no funciona en Internet Explorer, de modo que las imágenes quedarán como siempre. Otra cosa importante es: no se olviden de escribir `alt=""` bien descriptivos, no sólo para que tengan buenos pies de fotos, sino también para mejorar la comprensión de la imagen.





Si quieren más información sobre la propiedad content deben ir a al punto [12.2 La propiedad &#8216;content’](http://www.sidar.org/recur/desdi/traduc/es/css/generate.html#content) de la especificación oficial de CSS 2 traducido por SIDAR.




 
