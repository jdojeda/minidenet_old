---
comments: false
date: 2001-12-12 18:53:43
layout: post
slug: separando-el-contenido-de-la-prensentacin
title: Separando el Contenido de la prensentación
wordpress_id: 115
categories:
- Internet
---

Es asombroso, pero uno después de un rato se da cuenta que separar el contenido de la presentación es algo que nos favorece, les cuento una experiencia reciente.  

  

Me han encargado que ubique una tabla de Mareas Pleamares y Bajamares de 3 meses en el sitio de un cliente, el origen de los datos fueron extraídos de un sitio guvernamental de Buenos Aires, lo cual genero una tabla de 26 columnas por 86 filas, interesante el documento tardaba bastante tiempo, cuando observé el código cada celda tenia un tag `&lt;font&gt;&lt;/font&gt;`, con los atributos `color`, `size` además los cabezales tenían el tag de **negrita** todo en la misma tabla.  

  

Lo curioso fue que mi editor de html estuvo 5 minutos reemplazando todos los caracteres como `&#38;nbsp;` que habían usado para darle forma a la tabla y serapar celdas, las celdas tenían tamaños todas las filas.  

  

Como primer paso fue eliminar todo el código innecesario, como segundo paso fue eliminar las medidas en las filas, y ubicando solamente las medidas en la primera fila, si la primera mide 20 pixeles, las demás (salvando que haya un dato que rompa el largo) serán de 20. Con esto ya no ahorramos cantidades inmensas de código por descargar. después a la tabla se ubicó un `style=&#34;&#34;`, con una font definida, tamaño. Ni hacer un estilo aparte hizo falta, y el resultado fue algo impresionante… el archivo pesa menos de la mitad del original.




 
