---
comments: false
date: 2003-07-14 13:43:45
layout: post
slug: ltimos-post-comentados
title: '&#218;ltimos post comentados'
wordpress_id: 1049
categories:
- Internet
---

Estoy agregando pequeñas funcionalidades a minid.net, una de ellas está a tu izquierda, es un listado de los últimos comentarios escritos en posts.





Para realizar lo mismo en tu weblog debes tener [Movable Type](http://www.movabletype.org), en la plantilla maestra (la que arma la página de inicio), ubica este código en la zona donde quieras que aparezcan los 10 últimos posts en donde hay comentarios nuevos.





bc. 


  


  1. [<$MTEntryTitle$>](<$MTEntryPermalink$>)

  





Yo mismo luego con ayuda de otros tags que posee MT le he agregado un poco más de funcionalidad, como listar la cantidad de posts que posee cada post que aparezca en la lista, esto se hace usando el código `MTEntryCommentCount`.





Una última cosa, yo he creado para tener más performance un include que luego será llamado desde una instrucción en PHP, que lo que me permite es que cada vez que se escriba un comentario, no tenga que reescribir toda la página de inicio, si no sólo esa pequeña porción de include.





El resto lo dejo en la imaginación de cada uno.




 
