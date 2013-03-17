---
comments: true
date: 2007-04-13 12:19:46
layout: post
slug: el-modelo-de-caja-primera-parte
title: El modelo de caja, primera parte
wordpress_id: 3052
categories:
- Internet
---

Si HTML es sinónimo de definición de contenidos, CSS lo es de definición de estilos visuales para un página _web_. Hasta aquí lo hemos explicado de sobras, extendidamente y repetidamente hasta el punto que será la última vez que mencione algo por el estilo.





Si todo este embrollo de conceptos aclara de forma sostenida lo que hoy en día se compone la web, básicamente hay otro punto importante a tener en cuenta y que, nunca lo he especificado en un artículo de forma extendida, y me estoy refiriendo al Box Model o, _Modelo de Caja_ en la lengua de Cervantes.




<!-- more -->



### El modelo de caja





Qué dice el W3C [sobre el modelo de caja](http://www.w3.org/TR/REC-CSS2/box.html):





> The CSS box model describes **the rectangular boxes that are generated for elements** in the document tree and laid out according to the visual formatting model. The page box is a special kind of box that is described in detail in the section on paged media.





Esto viene a explicar el por qué de muchas cosas. La más importante, es que cada elemento genera una especie de «caja» invisible. Ésta, a su vez, dependiendo de su clasificación (ver [clasificación de los elementos](http://www.minid.net/2007/04/04/tecnica-de-reemplazo-de-elementos-en-css/)) reacciona de una forma u otra. Saber bien cada parte de la caja, sus propiedades base, nos permite aplicar ciertas propiedades a un elemento u otro. De esta forma, logramos en muchos casos, el resultado deseado.





Esta es la gráfica oficial de las propiedades de caja que el W3C ofrece, la cual he modificado ligeramente agregando contenido dentro del área «contenido» a modo de ganar un puntillo más de comprensión:





![Box Model](http://www.minid.net/images/box_model.png)





El `border`, `margin` y `padding` de la caja puede romperse en cuatro partes: _top, right, bottom, left_, como podrán observar en el gráfico, PR es _"padding right"_ y así sucesivamente con el resto de propiedades.





El perímetro de cada lado de esa caja se denomina «límite», siendo así, 4 límites por una caja. En el gráfico, el primer límite que encontrarán (de afuera hacia dentro) es la línea rayada negra, que representaría al límite del _margin_. El límite del _border_ sería el segundo hacia el centro, el cual está marcado con línea negra sólida. El siguiente límite, es el del _padding_, marcado con una línea rayada gris y por último, el límite del contenido, marcado con una línea gris sólida.






	Límite del borde

	    

El límite del borde rodea al borde de la caja. Si el límite del borde es igual a 0, entonces éste tendrá el mismo valor que límite del `padding`.


	Límite del _padding_

	    

El límite del `padding`1 _rodea_ al acolchado total de la caja. Si el valor del _padding_ es 0, entonces éste límite será igual al límite del contenido.


	Límite del contenido o límite interno

	    

El límite del contenido _rodea_ al contenido renderizado del elemento.


	Límite del margen o límite externo

	    

El límite externo _rodea_ al margen de la caja. Si este valor es igual a 0, éste tendrá el mismo valor que el límite del borde.






Las dimensiones del contenido de cada caja están sujetas siempre por varios factores: cantidad de contenido (textos, imágenes o otras cajas), tablas, listas, etc. En cambio, el ancho y el alto, están definidos por la suma de otros factores.





Según el W3C, el ancho de una caja, está definida por la suma **total** de los márgenes, bordes y _paddings_ derecho e izquierdo. Donde `A` es el ancho de la caja y `C` el contenido, la formula quedaría:




    
    <code class="normal">M<sub>L</sub> + M<sub>R</sub> + B<sub>L</sub> + B<sub>R</sub> +P<sub>L</sub>+ P<sub>R</sub> + C = A</code>





Esto es tan simple como: tenemos una imagen de 100 pixeles y le aplicamos un margen de 10 pixeles; un _padding_ de 10px y un borde de 10px pixeles. El ancho total de esa imagen será de 160 pixeles:




    
    <code class="normal">10px + 10px + 10px + 10px + 10px + 10px + 100px = 160px</code>





De esta misma forma, el alto de cualquier caja está compuesta por la suma total del contenido más los márgenes, bordes y _paddings_ superiores e inferiores.





Saber nos servirá para «acomodar» esa imagen en el documento y pueda convivir con otros elementos. No saber calcular con éste modelo trae serios problemas. Las imágenes se romperán, muchos elementos reaccionarán de la forma contraria a la que pretendíamos hacer.





### Estilo de las áreas de una caja





Cada área tiene un estilo definido y claro en HTML:






	
  * Área del contenido: la propiedad `background` del contenido generado.

	
  * Área del _padding_: la propiedad `background` del contenido generado.

	
  * Área del borde: las propiedades del borde del elemento generado.

	
  * Área del margen: Siempre transparente.





Para comprobar esto, realizaremos un pequeño experimento. Tenemos el siguiente ejemplo de HTML en un simple documento:




    
    <code class="html">&lt;div&gt;ABCDEFJ&lt;/div&gt;</code>





Y en nuestra hoja de estilos, tenemos el siguiente código:




    
    <code class="css">div {
    	padding: 10px;
    	margin: 10px;
    	border: 2px solid #36c;
    	font-family: Calibri, "Lucida Grande", "Trebuchet MS", sans-serif;
    	font-size: 2em;
    	width: 200px;
    	background: #E5EDFE;
    }</code>





Obtendremos [este resultado](/files/modelo-ejemplo2.html). Como podrán observar, en la imagen, el área que he coloreado de naranja representa el área del contenido, mientras que el espacio entre el área del contenido y el límite del borde es el _padding_. Tanto el área del contenido como el área del _padding_ tienen el color de fondo `#E5EDFE`, aunque a modo de ejemplo yo utilice otro color. La distancia del límite del borde y el límite del documento es el margen, el cual es transparente.





![Areas del modelo de caja](http://www.minid.net/images/areas_del_modelo_de_caja.png)





Las líneas negras indican los 10px utilizados por el _padding_. las líneas rojas, los 10px utilizados por los márgenes aunque, en el ejemplo podemos observar que el margen izquierdo es más ancho, esto se debe al valor por defecto que trae el `body` del navegador que estoy utilizando, lo he marcado con naranja para que podáis diferenciar entre los márgenes. La línea verde, apenas visible, son los 2px del área del borde. La línea violeta en este caso, mide el ancho exacto de esa caja con respecto a otros elementos.





Este elemento no mide 200px como fue identificado en el CSS, sino 244px, ya que es el resultado de la suma total del ancho definido del contenido más los márgenes, _paddings_ y bordes izquierdo y derecho:




    
    <code class="normal">10px + 10px + 10px + 10px + 2px + 2px + 200px = 244px</code>





Luego de leer y comprender esto, muchos se imaginarán que todos los elementos de HTML tienen margen 0 y _padding_ 0 y, también, borde 0. Esto no es cierto, HTML en su forma natural ya presenta elementos con formato por defecto. Está hecho para que, ausente de una hoja de estilo el contenido tenga un formato mínimo. Por ejemplo, un titular `h1` tiene márgenes por defecto, que varían según el navegador. Un elemento de párrafo `p` tiene espacios entre líneas, y márgenes superiores e inferiores, y así sigue la lista de elementos. Con esto no quiere decirse que, por ya presentar dichas propiedades no podamos cambiarlas, al contrario, conociendo bien las propiedades y las áreas del elemento `h1`, podremos cambiar todo utilizando las propiedades exactas en el código CSS.





### Fin de la primera parte





Aquí termina la primera parte de esta charla sobre CSS. No sé cuánto extenderé el tema del modelo de caja, pero sé que la segunda parte explicará las propiedades de los márgenes entre elementos y cómo reaccionan, ya que es una parte importante a tener en cuenta cuando modelemos cosas con CSS en un documento HTML.





Cualquier duda, pregunta, corrección, están los comentarios.





#### Notas






 
  1. Para este y, otros casos, utilizaré la palabra _padding_ en favor del término «acolchado» o «almohadilla» para que podamos tener mejor referencia a la hora de entender los ejemplos de código CSS que preparamos. Traducir estas propiedades que _no_ pueden utilizarse en el código no tienen mucho sentido. ↩



  *[PR]: Padding Right
  *[W3C]: World Wide Web Consortium
  *[HTML]: Hipertext Markup Language
  *[CSS]: Cascading Style Sheet
