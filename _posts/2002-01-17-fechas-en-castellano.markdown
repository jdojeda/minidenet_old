---
comments: false
date: 2002-01-17 12:52:21
layout: post
slug: fechas-en-castellano
title: Fechas en castellano
wordpress_id: 171
categories:
- Internet
---

Para los que deseen saber sobre cómo hacer que las fechas esten en castellano usando movable type 1.3, hay dos formas:







  1. Configurar la máquina que sirve la web para que muestre fechas y horas en castellano.


  2. En el template del movable type crear imágenes que se ensamblen entre sí mismas, debes hacer 12 imágenes que correspondan a las palabras de los meses, y nombrarlas con los nombres que les correspondan por ejemplo december.gif, luego en el template del movable type debes poner:



`&lt;MTDateHeader&gt;&lt;img src=&#34;images/date/&lt;$MTEntryDate format=&#34;%d&#34;$&gt;.gif&#34; alt=&#34;&#34; /&gt;&lt;img src=&#34;images/date/de.gif&#34; alt=&#34;&#34; /&gt;&lt;img src=&#34;images/date/&lt;$MTEntryDate format=&#34;%B&#34;$&gt;.gif&#34; alt=&#34;&#34; /&gt;&lt;img src=&#34;images/date/&lt;$MTEntryDate format=&#34;%Y&#34;$&gt;.gif&#34; alt=&#34;&#34; /&gt;&lt;/MTDateHeader&gt;`  

  

  

  

Este tag `&lt;$MTEntryDate format=&#34;%d&#34;$&gt;` lo que hace es imprimir el nombre del día, así que deben hacer también 7 imágenes en castellano, pero el nombre del archivo en inglés, esto cuando imprima en el html va a quedar en inglés por que la fecha en nuestro server esta en inglés pero cuando llame al archivo de la imágen este bajará y mostrará la imagen por ejemplo monday.gif y monday.gif es una imágen que dice Lunes. Muy simple. El único trabajo es armar todas las imágenes pero no lleva todo un día.  

  

Si necesitan más referencias pueden mirar como esta hecha las fechas… cómo he desarrollado el juego de palabras. **Es muy simple.**


 
