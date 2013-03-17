---
comments: false
date: 2003-12-08 23:16:44
layout: post
slug: nombre-de-archivos-en-movable-type
title: Nombre de archivos en Movable Type
wordpress_id: 1356
categories:
- Internet
---

Mucha gente me pregunta cómo hago los nombres de archivos de minid.net en Movable Type, es fácil, uno tiene que ir a “weblog config” y cuando está dentro de esa sección hace clic en “Archiving”.





Luego cuando está dentro de “Archiving” en la opción “Individual Entry Archive” puedes poner algo así:





`categorias/&lt;$MTEntryCategory dirify="1"$&gt;/&lt;$MTEntryTitle dirify="1"$&gt;.php`





Notesé que hay una estructura de directorios en la cadena de escrita, `/archivos/categorias/` indica que los archivos que genere weblog se guardarán a partir de ahora en el directorio “categorias”, luego la siguiente porción de código es de MT `&lt;$MTEntryCategory dirify="1"$&gt;` y significa que se creará automáticamente un directorio con el nombre de la categoría gracias al comando `MTEntryCategory` a modo de obtener como resultado final `/archivos/categorias/accesibilidad/` o `/archivos/categorias/php/` y la porción final del código que hice genera el nombre del archivo utilizando el titulo del post utilizando `&lt;$MTEntryTitle dirify="1"$&gt;.php` (notar que utilizo .php pero puede ser `.html` o `.htm`.





El atributo `dirify="1"` genera los nombres con espacios convirtiéndolos en guinos bajos así `hoy_es_lunes.html`.





Y un detalle más que se me escapaba, notar que la base de los directorios que genera ese código que he escrito comenzará a crearse en el directorio de archivos de MT, por lo general es `/archives/`, pero en mi caso lo he configurado para que sea `/archivos/.`





Una muestra del ejemplo funcionando lo pueden ver en la barra de direcciones de su navegador accediendo al post que acabo de publicar.





Para los más experimentados pueden probar haciendo las [Cruft-free URLs in Movable Type](http://diveintomark.org/archives/2003/08/15/slugs) de Mark Pilgrim.




 
