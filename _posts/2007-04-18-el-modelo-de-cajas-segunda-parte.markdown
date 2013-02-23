---
comments: true
date: 2007-04-18 18:47:29
layout: post
slug: el-modelo-de-cajas-segunda-parte
title: El modelo de cajas, segunda parte
wordpress_id: 3055
categories:
- Internet
---

En la primera charla que hice sobre el modelo de cajas descubrimos:






	
  1. Todos los elementos en HTML generan una caja invisible.

	
  2. Tienen muchas propiedades visuales: márgenes, _paddings_, bordes.

	
  3. Estas propiedades, a la vez, reaccionan o desaparecen dependiendo el tipo de elemento.





Bien, como les venía comentando, hace unos días [hablábamos de la base del modelo de cajas](http://www.minid.net/2007/04/13/el-modelo-de-caja-primera-parte/) que tiene CSS y HTML para representar cosas en pantalla. Sabemos que los elementos tienen márgenes, _paddings_, bordes y, en casos excepcionales, podemos cambiar o no dichas propiedades. Ahora bien, en este capítulo intentaré explicar algunos porqués de este asunto. Muchos podrán entender por qué no salen las cosas como quería uno, si es que está poniendo los valores correctos, bien, todo sea por la búsqueda del saber.




<!-- more -->



### La propiedad `margin` de un elemento





Todos los elementos de HTML que se encuentren entre las etiquetas `&lt;body&gt;…&lt;/body&gt;` tienen una propiedad de margen. Este margen siempre es transparente, no se puede colorear ni aplicar bordes.





Los márgenes tienen variantes por defecto, en su gran mayoría, tienen el valor 0, mientras que en otros casos, vienen con otros cómputos. Por ejemplo, un elemento de título, `h1`, tiene unos márgenes superior e inferior definidos ya, por el navegador. Algunos, lo tienen de un valor y otros, simplemente tienen la variación que se les antoja. Pero esto, ya sabemos, podemos controlarlo nosotros con CSS. Si os fijáis en el ejemplo, veréis como están compuesto los márgenes de los elementos `h1` y `p`, que se encuentran dentro de un simple `div`:





![Margenes Ejemplo 1](http://www.minid.net/images/margenes_ejemplo_1.png)





Obtener este resultado es bien simple, basta un poco de HTML con estos valores:




    
    <code class="html">&lt;div id="caja1"&gt;
    	&lt;h1&gt;Esto es un título&lt;/h1&gt;
    	&lt;p&gt;Este es el primer párrafo.&lt;/p&gt;
    &lt;/div&gt;</code>





Y en nuestra hoja de estilos, o bien, dentro del mismo documento HTML, entre las etiquetas `&lt;head&gt;&lt;style type="text/css" media="screen"&gt;…&lt;/style&gt;&lt;/head&gt;` este trozo de código CSS:




    
    <code class="css">body { font-family: Calibri, sans-serif; }
    	
    	div#caja1 {
    		border: 1px solid #000;
    		background: #E4EBCA;
    	}
    	
    	h1 {
    		background: #f00;
    		color: #fff;
    		}
    		
    	p {
    		background: blue;
    		color: #fff;
    		}</code>


		


Esto, más que nada se hace para empezar a tener referencias donde empiezan los márgenes naturales de cada elemento y cuánto representa cada área en el plano. En la imagen, pueden apreciar que el elemento `h1` (coloreado con fondo rojo) por defecto tiene un margen natural de `18px`, tanto en la parte superior como en la inferior. El elemento `p`, tiene un margen inferior de de `14px` pero tiene un margen superior que no parece correcto. Hasta aquí, nada raro pasa, tiene una explicación.





Parece el elemento `p` tiene un margen superior de sólo `4px` y no de `14px` como debería, _¿cómo es posible? ¿qué está pasando?_ Hagamos otra prueba, lo mismo pero sin el título en el ejemplo:





![Margenes Ejemplo 2](http://www.minid.net/images/margenes_ejemplo_2.png)





_¡Es esto un chiste?_ No, no es un chiste. Ahora el margen superior del elemento `p` es igual al inferior. Y este tema, como lo no aprendáis, ¡os traerá problemas al hacer páginas!


	


La respuesta a estos cambios no es simple, pero tampoco es un secreto: márgenes verticales que colapsan entre sí. Simplemente, cuando dos elementos de bloque son adyacentes, el navegador aplica una regla para que se derrumben los márgenes, y así, mantener un equilibrio.





Todo este dédalo de valores y márgenes se aclara en el siguiente punto.





### Márgenes que colapsan





Es lamentable que no se explique esto en tutoriales en línea. En general, se explica el marginado de y entre elementos de una forma bastante superficial para mi gusto. Pero en este apartado aprenderos la regla de colapso entre márgenes, así podéis comprobar con vuestros ojos y en vuestros ordenadores dicha regla.





En las especificaciones de CSS2 del W3C [podemos leer](http://www.w3.org/TR/REC-CSS2/box.html#collapsing-margins) acerca de este asunto:





> 

> 
> In CSS2, horizontal margins never collapse.
> 
> 

> 
> Vertical margins may collapse between certain boxes:
> 
> 

> 
> 
	
>   * Two or more adjoining vertical margins of [block](http://www.w3.org/TR/REC-CSS2/visuren.html#block-box) boxes in the [normal flow](http://www.w3.org/TR/REC-CSS2/visuren.html#normal-flow) collapse. The resulting margin width **is the maximum of the adjoining margin widths**. In the case of negative margins, the absolute maximum of the negative adjoining margins is deducted from the maximum of the positive adjoining margins. If there are no positive margins, the absolute maximum of the negative adjoining margins is deducted from zero.
> 
	
>   * Vertical margins between a floated box and any other box do not collapse.
> 
	
>   * Margins of absolutely and relatively positioned boxes do not collapse.
> 






Lo que viene explicar, en lengua de Cervantes, lo siguiente:






	
  1. Sin olvidarnos de los márgenes horizontales, estos _nunca_ colapsarán entre sí, a menos que forcemos a ello con la propiedad `margin:` de CSS.

	
  2. El margen resultante entre dos objetos adyacentes se define por el margen más alto de los dos.

	
  3. Si ambos márgenes son iguales, entonces se toma el valor de uno y se quita del otro, para evitar la suma de ambos y, por ende, más margen.

	
  4. Si uno de los dos fuera un margen negativo, el valor máximo del margen negativo se suma con el valor máximo del margen positivo entre los elementos adyacentes. El resultado será el espacio entre elementos. Si no hay ningún margen positivo, el máximo absoluto de los márgenes adyacentes negativos es restado de cero.

	
  5. Los márgenes verticales entre cajas flotadas no se colapsan.

	
  6. Los márgenes de cajas ubicadas de forma absoluta y relativas tampoco colapsan.





Esto explica porqué en el primer ejemplo, ambos márgenes colpasan entre sí, dejando como valor predominante al márgen inferior del elemento `h1` en vez del `p`:





![Margenes Predominantes que Colapsan](http://www.minid.net/images/margenes_predominantes_que_colapsan1.png)





En este gráfico vemos destripado el asunto. El margen del elemento `h1` está representado con color rojo suave, y podemos observar que al ser más predominante que el margen del elemento `p`, éste queda intacto, colapsando con el margen del elemento `p`.





Si al margen del elemento `h1` le ponemos el mismo valor que el margen del elemento `p`, obtendremos este resultado:





![Margenes Ejemplo 4](http://www.minid.net/images/margenes_ejemplo_41.png)





En este ejemplo, vemos como se colapsan totalmente, y se toma el mismo valor. Ahora, imaginemos que le aplicamos un margen inferior de valor negativo al elemento `h1` de unos `-5px`.





![Margenes Ejemplo 5](http://www.minid.net/images/margenes_ejemplo_5.png)





Ahora observamos el efecto que conseguimos, reducir el espacio entre ambos en 5px de márgenes. Esto se debe, como expliqué antes, es el resultado de la suma del valor máximo del margen negativo y el positivo.





![Margenes Ejemplo 6](http://www.minid.net/images/margenes_ejemplo_6.png)





Éste último ejemplo, muestra como el título `h1` elimina el margen inferior al valor 0 y el párrafo `p` elimina su margen superior al valor de 0 también. Quedando así donde cajas perfectamente unidas. Ésto de todas formas, se puede llegar sin complicaciones de sumas y resta de valores, simplemente escribiendo una regla que elimine ambos márgenes y los deje al valor 0:




    
    <code class="css">h1 {
    	margin-bottom: 0;
    }
    
    p {
    	margin-top: 0;
    }</code>





La suma de ambos da 0, por ende obtenemos el mismo resultado que el ejemplo 6.





### Resumen





En esta parte, aprendemos una parte importante del comportamiento de los márgenes. Os recomiendo seguir probando con un simple ejemplo de HTML como el que he ofrecido, en donde podéis ver los diferentes resultados.





Muchos desarrolladores experimentados no les recomendarán utilizar márgenes negativos, ya que son incontrolables en algunas circunstancias, debido a las diferentes interpretaciones que tienen algunas versiones de navegadores. Por eso recomiendan utilizar reglas que den 0 o valores positivos, para evitar problemas.





En la próxima parte, veremos las propiedades `margin:`, `padding:` y `border:` en CSS, ejemplificando cada caso para acabar la serie de El modelo de caja.





#### Referencias y lectura adicional






	
  * [El modelo de caja, primera parte](http://www.minid.net/2007/04/13/el-modelo-de-caja-primera-parte/) – Minid.net, 13/04/2007

	
  * [Box Model](http://www.w3.org/TR/REC-CSS2/box.html) – Cascading Style Sheets, level 2	CSS2 Specification, 12/05/1998 (en inglés)

	
  * [`float`, `clear` i la repercussió en el col·lapse dels marges](http://css.artnau.com/float-clear-i-la-repercussio-en-el-collapse-dels-marges/) – Arnau Siches, 04/02/2007 (en catalán)


  *[W3C]: World Wide Web Consortium
  *[HTML]: Hipertext Markup Language
  *[CSS]: Cascading Style Sheet
