---
comments: false
date: 2003-07-14 18:57:44
layout: post
slug: mostrando-varias-categorias-en-el-mismo-post-con-movable-type
title: Mostrando varias categorias en el mismo post con Movable Type
wordpress_id: 1051
categories:
- Internet
---

Para listar las categorías donde se ha alojado un post en concreto podemos utilizar esta útil propiedad del MT, llamada [glue](http://www.movabletype.org/docs/mtmanual_tags.html#item_MTEntryCategories), la cual nos permite “pegar” las categorías y separarlas con una coma por ejemplo.





Un ejemplo visual puede ser:





> 

> 
> En categoría: [CSS](http://www.minid.net/archivos/categorias/css/index.php), [Documentación](http://www.minid.net/archivos/categorias/documentacion/index.php), [Estándares Web](http://www.minid.net/archivos/categorias/estandares_web/index.php), [Internet](http://www.minid.net/archivos/categorias/internet/index.php), [Programación](http://www.minid.net/archivos/categorias/programacion/index.php), [XHTML](http://www.minid.net/archivos/categorias/xhtml/index.php), [XML](http://www.minid.net/archivos/categorias/xml/index.php)
> 
> 






Para llevar a cabo esto, en la plantilla maestra de nuestra página de inicio debemos ubicar dentro de los tags `MTEntries`:





bc. En categoría:   

[  

<$MTCategoryLabel$>  

](<$MTCategoryArchiveLink$>)  







Es vital que dejen un espacio cuando escriban la coma sino quedarán todos las categorías juntas.





Esta función sirve para todos aquellos que utilizan MT y guardan en múltiples categorías un post determinado.




 
