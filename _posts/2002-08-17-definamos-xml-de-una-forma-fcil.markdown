---
comments: false
date: 2002-08-17 03:46:01
layout: post
slug: definamos-xml-de-una-forma-fcil
title: Definamos XML, de una forma fácil
wordpress_id: 505
categories:
- Internet
---

Hay veces que cuesta entender, y no es problema de uno, es problema del que plantea las cosas…





Hace unos días, una persona me envió un e-mail, preguntandome si le podía explicar que era XML, si bien podía explicarselo directamente por un e-mail, tuve una idea, que quizás en vez de beneficiar a esa persona, podría beneficiar a muchas más posteando esto aquí.





La idea es que yo voy a explicar que es XML, pero me gustaría dejar algunos puntos en blanco para la gente que entiende de esto también participe de este post escribiendo un comment y colaborando con la definición.





Así que empiezo…





XML viene de las siglas “eXtensible Markup Language”, en castellano entendible es _Lenguaje Extensible de “Etiquetado”_.





XML está basado en el anterior estándar SGML, que data de 1986, pero que empezó a gestarse desde principios de los años 70, y a su vez basado en el GML creado por IBM en 1969, o sea que XML por más moderno que parezca ya tenía sus raíces…





XML se derivó como subconjunto simplificado, eliminando las partes más engorrosas y menos útiles. Como su padre, y este es un aspecto importante sobre el que se incidirá después, XML es un **metalenguaje:** que _es un lenguaje para definir lenguajes_. 





Los elementos que lo componen pueden dar información sobre lo que contienen, no necesariamente sobre su estructura física o presentación, como ocurre en HTML.





Dejando de lados las definiciones técnicas, vamos al grano: 





### ¿Qué es XML?







  * XML es EXtensible Markup Language 

	
  * XML es un lenguage de tags muy parecido al HTML. 

	
  * XML fue desarrollado para **describir los datos**. 

	
  * Los tags de XML no están definidos como lo están en HTML. En este caso tú debes defirnirlos.

	
  * XML usa un Document Type Definition (DTD) ó una XML Schema para describir los datos.





### ¿Cúal es la diferencia entre XML y HTML? 





Fácil, XML fue diseñado para transportar datos.





XML fue diseñado para describir datos y focalizar en que tipos de datos son. HTML fue diseñado para mostrar la información, y focalizar en cómo la información se va a ver.





En HTML se trata de mostrar información, en XML se trata de describirla.





### Un ejemplo





HTML no fue diseñado para hacer de todo.





Quizás es un poco difícil de entender, pero XML no hace de todo, XML esta creado para estructurar, guardar, y enviar información.





Este es un ejemplo claro, de una nota guardada en formato XML.





bc.   

Tove  

Jani  

Recordatorio  

No me olvides este fin de semana!  







¿Lo ven? XML es simplemente como una base de datos en formato texto, que puede ser utilizada por cualquier programa que soporte XML, de esta forma con este archivo de XML que acabo de describir, sólo hace falta que alguien programe una interface para utilizar y mostrar esos datos.





Este ejemplo (que carece de algunos elementos como el DTD o el XML Schema) puede ser visto y utilizado en grandes cantidades de cosas, como en sitios web, en PDAs, o cualquier aparato electrónico que pueda leer y mostrar información   

de un archivo XML.





Bueno a partir de esto, me gustaría que agregaran comentarios sobre ésta mini definición y en caso de que falte algo podrían comentarlo también, así la gente que se inicia en estos temas aprende.




 
