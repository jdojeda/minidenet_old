---
comments: false
date: 2005-11-10 11:11:31
layout: post
slug: lo-simple-tambien-es-potente
title: Lo simple también es potente
wordpress_id: 2652
categories:
- Internet
---

Distendiendo un poco la conversación que mantenemos en unas entradas más abajo, han citado este artículo [¡es tan simple!](http://www.minid.net/2005/10/29/esto-es-tan-simple/) en otro blog. Según lo que leo, todo se resume en que, no hay que diseñar para la gente que no sabe pero tampoco bandearse para el lado de lo experto.





Me gustaría aclarar unas cosas sobre este aspecto, o sea, mi opinión personal. La tecnología está para servirnos, no para que nosotros, meras conglomeraciones de células, sirvamos a la tecnología. El ejemplo del buscador es el mejor ejemplo para realizar una reflexión sobre estos temas. Piensa que no te hace falta más nada que _una caja de texto y un buen motor analizador_ para entender lo que el usuario busca. Hay leyes que indican lo contrario, más opciones, más dificultad para buscar y encontrar.



<!-- more -->



Repitiendo de forma resumida lo que había escrito, sin caer en el extremo simplista de una caja de texto sin indicadores, un buscador debería ser capaz de diferenciar y comprender muchos patrones, sin llegar al nivel de perfección como podremos apreciar en Star Trek. Debería intuir valores y aproximaciones si fuera necesario: "casa por 35 euros el día" y te retorne resultados de casas de 30, 31, **35**, 36, 37. Por eso, comenté que hacer algo de éste calibre no es fácil. Cuando un buscador es algo limitado a un rubro: un sitio de bodas, ¿para qué poner más combos de selección?





Les voy a mostrar otro ejemplo de complejidad que, sinceramente, no le encuentro sentido:





![Ejemplo de un buscador de Campings](/images/campingsbuscador.jpg)





Según el planteo que hace Octavio Alvarez, [un usuario avanzado necesita de estas herramientas avanzadas](http://alvarezp.ods.org/blog/2005/11/07/ni-tanto-que-queme-al-santo/) para poder encontrar algo con precisión. ¿La precisión la podemos obtener eligiendo combos o escribiendo bien la cadena a buscar? En la imagen podrán apreciar el poderío en todo su esplendor de un buscador avanzado (el simple tiene más de 2 controles) que, sin seleccionar demasiadas opciones, me da cero resultados. Luego entre teje y maneje he llegado a descubrir los condicionantes que revientan el 90% de las posibilidades de búsqueda. Bien, un simple campo de texto más un buen motor podría eliminar este trabajo que me he tomado, sin necesidad de tener un doctorado en ciencias de la información.





Como dice Octavio en su post, ésta precisión se basará en las palabras que escriba y las opciones que elija. Los que sabemos (o los usuarios gurúes), tenemos que disponer de una herramienta ultra-sofisticada, que invite a la providencia de los resultados y no caiga en la rabdomancia. Creo que no hace falta la sofisticación, la gente sin experiencia y la gente con _mucha_ experiencia aprecia la simplicidad. El experto no tiene tiempo. El usuario que no sabe nada tampoco. Cosas instantáneas, cop de tita, no me hagas pensar. Si miran ejemplos de buscadores bien trabajados pueden ver [Google](http://www.google.com) o [Gettyimages](http://www.gettyimages.com), que intuyen miles de patrones de búsqueda. Sólo tienes que escribir lo que buscas, nadie mejor que tú para describir algo que deseas. De la misma forma que puedes afinar con un buscador avanzado quitando opciones y agregando otras, puedes seguir escribiendo en una caja de texto normalita y luego refinar resultados. En todo caso, una guía lógica no viene nada mal, como lo tiene Google, como lo tiene gettyimages y una decena de buscadores.





Yo creo que, tanto para un usuario que no sabe nada, como para uno que podría tener un orgasmo buscando un documento con un patrón grep en una caja de búsqueda no les hace falta más elementos que una etiqueta (label) y una caja de texto (que se acciona a golpe de la tecla Intro). Miren su buscador de Firefox y díganme si ven algún botón que diga (buscar). No, no hace falta. Escribes; Intro y resultados. Grábense utilizando el buscador, uno cualquiera, fijaros que rara vez haréis un clic en un botón de “buscar”. Lo más instintivo que he visto en pruebas con usuarios es un golpe a la tecla Intro luego de escribir lo que uno necesita. El tema de los botones es una discusión sin fin. Podría dar mi punto de vista del tema, porqué salen los botones “buscar”, “ir” y otra docena. Mi conclusión siempre es la misma: avisa al usuario que un control previo a éste tendrá un efecto. Un usuario que no tiene idea, incluso, uno experto no sabrá que pasa si uno escribe en una caja de texto. El botón aunque no se utilice, es un aviso importante de acción. Caer en la tontería de que, algo simple debe ser sólo una caja no es ponerle empeño. Yo no digo que _todo_ debe ser una caja de texto, sin etiquetas (label) y sin botones. Simple, sencillo, cómodo.





Diferencia de un buscador simple y uno avanzado (ejemplos tontos):





Busca: ReportesNotas de PrensaDocumentos...
200020012002...





Con esta estructura, el usuario tiene que poner "Macaco" (nombre de un producto inventado) seleccionar “reportes” del combo de categorías y el año 2001 del combo de los años para recibir todos los reportes relacionados con Macaco del 2001. Ha tenido que escribir, seleccionar dos opciones, vamos no se le ha descolocado la clavícula por hacerlo, pero según la práctica simplista, debería haber sido sólo algo como:





Busca: 





Ese fue un ejemplo simple. La complejidad puede aumentar [cuando se trata de analizar faltas ortográficas](http://www.minid.net/2002/03/27/pretny-spears/). En una empresa, una persona podría haber escrito macado reportes de 2005. “Macado” no existe en ningún documento, pero otras variantes posibles sí. Entonces, como buen buscador el motor podría decir: Creo que querías buscar “macaco” como lo hace Google. Toda esa lógica a nivel código no puedo representarla, pero si puedo diferenciar realmente las ventajas.





La potencia, lo avanzado, lo preciso no lo marca realmente tres o cuatro checkboxes más dos combos con calendario. La potencia la marca el núcleo que analiza, procesa, entrega los resultados y eso es lo más difícil de lograr. Ejemplos como Google (aún con imperfectos) y gettyimages (lo más didáctico que se hizo hasta ahora) son cosas que uno debe tratar de abordar para casos específicos. No conozco otros buscadores que ejerzan el trabajo de la sencillez de tal forma. El concepto de la simplicidad no se reduce sólo a buscadores, también a otros aspectos, ni bien tenga más tiempo para pasar a formato blog, lo haré con gusto.
