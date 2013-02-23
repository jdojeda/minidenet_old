---
comments: false
date: 2003-12-15 16:44:38
layout: post
slug: celdas-con-enlaces-en-vez-de-enlaces-reales
title: Celdas con enlaces en vez de enlaces reales
wordpress_id: 1380
categories:
- Internet
---

Acabo de ver una página, no importa ahora la URL, no es el caso, pero sí es el método que utilizan para enlazar a una página. En vez de utilizar un simple tag `&lt;a&gt;` utilizan `onclick="window.navigate('index.html')`, repito, **nunca deben hacer esto**.





El ejemplo:





> `&lt;td &lt;strong&gt;onclick="window.navigate('index.html')"&lt;/strong&gt; style="cursor:hand" bgcolor="#fca90f" align=left height="1%" valign=middle&gt;&lt;br /&gt;&lt;font color="#006600"&gt;&lt;b&gt;Conozca nuestros productos&lt;/b&gt;&nbsp;&nbsp;&lt;img src="imatges/a.png" width=2%&gt;&lt;/font&gt;&lt;br /&gt;&lt;/td&gt;`





Nunca deben reemplazar los elementos de HTML tan vitales como los enlaces, por una instrucción de Javascript. Pueden ver en esa porción de texto, cuando hagan una tabla, y a un `&lt;td&gt;` le ubiquen esa instrucción, funcionará solo en Internet Explorer, además el texto no se puede seleccionar (en realidad cuesta demasiado). Olvidaros de los atributos de las imágenes y otros atributos del pasado de escritos.





Existen métodos más delicados de usar Javascript para cambiar los colores de las celdas, incluso hay propiedades de CSS que lo hacen de forma nativa y suave, y en caso de que no funcionen los selectores, la página se puede seguir usando.





Nótese: que no he dicho **javascript no sirve** sino que ha sido utilizado incorrectamente.




 
