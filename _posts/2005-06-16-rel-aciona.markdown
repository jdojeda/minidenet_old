---
comments: false
date: 2005-06-16 15:35:00
layout: post
slug: rel-aciona
title: Rel-aciona
wordpress_id: 2452
categories:
- Internet
---

Experimentando como siempre con XHTML he puesto en práctica otra mejora semántica en mis enlaces. Antes, cuando quería referenciar a una entrada en mi bitácora, ponía una serie de atributos que mejoraban la semántica de mis documentos. Incluía el atributo `rel="help"` cada vez que quería referenciar una entrada, haciendo de éste un enlace erróneo. Sí, me equivoqué feo en emplear esto pero todavía estoy a tiempo de mejorarlo y todo gracias a que, medianantente, tengo bien formateado mi contenido.





Viendo la especificación, me di cuenta que podía referenciar mejor los enlaces y todo sin tener que inventarme mis propias referencias (entiéndase por `rel="amigo"`, `rel="jueguito"`, etc.) ya que la especificación de relaciones ya trae un set de atributos perfectos para describir la estructura de un documento o una web. Este set de atributos están definidos tan bien que podemos referenciar cualquier parte crítica de un documento: inicio, capítulo, subcapítulo, categoría, ayuda, página de inicio, etc..





Con ellos podemos aprovechar la semántica en esta capa de la web, mejorando nuestros documentos o posts (en el caso de los blogs) para los agentes de usuario (entiéndase como navegadores o dispositivos para utilizar la web). Si quiero enlazar una bitácora, simplemente utilizo esta estructura de enlace:




    
    <code>&lt;a href="http://www.minid.net" rel="Start" title="Minid.net"&gt;Minid.net&lt;/a&gt;</code>





Este tipo de enlace es simple, además el atributo ` Start ` agrega el toque semántico ideal para enlazar una página de inicio. Esto, más allá de estar en inglés, permite tener la seguridad de que, en un futuro o ahora, se analicen enlaces y de una forma más eficiente. Adelante les mostraré las posibles aplicaciones que tiene estos atributos.





Los atributos definidos por el W3C para referenciar tipos de contenidos o documentos son estos: _Alternate_, _Start_, _Next_, _Prev_, _Contents_, _Chapter_, _Glosary_, _Appendix_, _Section_, _Subsection_, _Help_ y _Bookmark_.






Alternate

    

> Señala las versiones substitutas para el documento en el cual la conexión ocurre. Cuando está utilizado junto con el atributo del `lang`, implica una versión traducida del documento.





También podría aplicarse para diferenciar versiones del mismo documento, ya sea en formato PDF, PNG u otro formato de conveniencia para el desarrollador o el usuario:





Ejemplo en el navegador:





> Ver esta versión [en inglés](ingles.php) o en [ PDF ](documento.pdf).
> 
> 






Ejemplo en el código de la página:




    
    <code>&lt;p&gt;Ver esta versión &lt;a href="ingles.php" rel="alternate" hreflang="en"&gt;en inglés&lt;/a&gt; o en &lt;a href="documento.pdf" rel="alternate"&gt; &lt;abbr title="Portable Document Format" lang="en"&gt;PDF&lt;/abbr&gt; &lt;/a&gt;.&lt;/p&gt;</code>



Start

    

> Refiere al primer documento en una colección de documentos. Este tipo de la conexión dice a motores de búsqueda qué documento es considerado por el autor ser el punto de partida de la colección.





Esto tiene casi la misma aplicación que _chapter_, _home_ pero se utiliza para especificar por ejemplo una cadena de documentos lineales de algún tema. Si dentro de un `chapter` alojamos varios documentos el documento que inicia esa cadena debe estar referenciado como `rel="start"`.


Next

    

> Refiere al documento siguiente en una secuencia linear de documentos. Los agentes del utilizador pueden elegir cargar el documento siguiente, para reducir el tiempo de carga percibido.





Si en el ejemplo anterior había mencionado que, el primer enlace a un documento que inicia una cadena de documentos en forma lineal, el segundo de esa cadena tiene que haber sido referenciado con `next`.



Prev

    

> Refiere al documento anterior en una serie pedida de documentos. Algunos agentes del utilizador también utilizan el sinónimo "anterior".





Siguiendo la cadena de ejemplos, tenemos que, en el documento anterior había sido referenciado con `start`, lo que indica que estoy parado en el segundo documento. Si estoy en el segundo documento y quiero hacer un enlace al documento inicial debo marcarlo como `prev`. Esto crea _bidireccionalidad entre documentos_ encadenados de forma lineal. Si corriera un programa que analice cada enlace podría analizar cada `rel` `start`, `next` y `prev` y graficarlos a gusto, esta entre otras de las miles de cosas que se podrían hacer.



Contents

    

> Refiere a una porción del documento como índice. Algunos agentes de usuarios (navegadores) también utilizan el sinónimo ToC.





Este podría ser el ejemplo más claro para referenciar a una página que contiene un índice de posts. Sea el archivo de la bitácora, el mapa web de una página corporativa, etc.




Glossary

    

> Refiere a un documento que proporciona a un glosario de los términos que pertenecen al documento actual.





Este referenciador es ideal para apuntar aquellas páginas que tienen definiciones. Muy pocos son las páginas que tienen un glosario de términos, pero cuando se tenga uno convendría utilizar esto.



Chapter

    

> Refiere a una porción del documento como capítulo en una colección de documentos.




Esto se puede utilizar para definir capítulos en una entrada en la bitácora, o bien, para referenciar una entrada en concreto a un tema o categoría en particular.


Section

    

> Refiere a una porción del documento como sección en una colección de documentos.





En este caso, mejor explicado que en el primer párrafo no se puede encontrar. La idea es que esta referencia sirve para marcar una sección, categoría de un tema en particular. Por ejemplo, en un sitio corporativo, todos los enlaces que apunten a la página de inicio de la sección servicios tienen que llevar el `rel` `section` especificado.



Subsection

    

> Refiere a una porción del documento como una subsección en una colección de documentos.

Ídem que el anterior pero con subsecciones de una categoría.



Appendix

    

> Refiere a una porción del documento como apéndice en una colección de documentos.

Ideal para apuntar apéndices de un documento. El mejor ejemplo lo pueden ver en cualquier especificación del W3C.



Help

    

> Refiere a una ayuda de ofrecimiento del documento (más información, conexiones a la otra información de las fuentes, los etc.)





Esto puede interpretarse de varias formas, es un arma de doble filo ya que podemos malinterpretar como yo lo hacía en posts. Yo recomendaría utilizar `help` en estos casos:






	
  1. Cuando hay que referenciar a una página de ayuda sobre un determinado servicio: _Si tienes problemas para hacer llenar nuestro formulario lee nuestro [manual de procedimientos](manual.php)_.

	
  2. Cuando referencies en una página un texto de ayuda. En la misma página hay un enlace con un ancla que lleva al usuario unas líneas más abajo de todo el contenido.

	
  3. Cuando se trate de una página que no sea de inicio, sección o subsección, capítulo ya que existen referencias para ello.





Bookmark

    

> Refiere a un marcador. Un marcador es una conexión a un punto de entrada dominante dentro de un documento extendido. El atributo `title` se puede utilizar, por ejemplo, para etiquetar el marcador. Observe que varios marcadores pueden estar en un documento.




Una buena opción para aprovechar esto es ubicarle al documento una dirección URL, y a esa URL ponerle un `rel="bookmark"`. Muchos navegadores toman esta directriz para armar accesos directos a documentos.






El proceso es simple, antes de enlazar algo pensamos a dónde va a parar en las estructuras, a qué sección, categoría o parte de los documentos. Gracias a que nuestro sitio está organizado y bien estructurado no cuesta mucho adivinar que rel debemos escoger. Esto cabe destacar, en la práctica es algo opcional y no obligatorio. El documento validará, etc. y etc., pero el nivel semántico bajará.





Cuando hablo de estos temas, me gusta aclarar que es importante que cada desarrollador analice que grado de semántica quiere arribar. Si es bajo porque el fin del sitio no es algo importante entonces que prescinda de estas cosas. Si lo que quiere es abarcar mucho, entonces tendrá que poner esto y algunas cosas más.





Yo cada entrada en mi bitácora que haga le pongo atributos rel i rev dado el caso. Es una cuestión de disciplina y de ganas de ofrecer un contenido bien acabado, lleno de referencias a páginas con atributos que le agreguen valor. Esto claro, es una cuestión _friki_ de cada uno, está claro que si tienes 400 entradas por modificar se tornará en un caos.
  *[PDF]: Portable Document Format
  *[XHTML]: Extensible Hypertext Markup Language
  *[etc.]: Et Cetera
  *[W3C]: World Wide Web Consortium
  *[PNG]: Portable Network Graphics (graphic file standard/extension)
