---
comments: false
date: 2005-11-15 21:25:50
layout: post
slug: hache-uno-hache-dos-hache-tres
title: Hache uno, hache dos, hache tres
wordpress_id: 2661
categories:
- Internet
---

![Accesibilidad](/images/accesibilidad.png)En el momento de querer hacer una página válida para [las directrices de accesibilidad web WAI](http://www.w3.org/WAI/) nos topamos con un problema que a muchos les debe traer dolores de cabeza. Esto tiene que ver con los encabezados. Esto suele pasar en general por el desconocimiento a la hora de estructurar un documento. Los desarrolladores, tanto como los diseñadores, a veces no ponen ningún tipo de cabecera, así como también las utilizan únicamente con fines gráficos.





Implementando todo de esta forma _no_ se alcanza el nivel de conformidad exigido.





Por norma, todos los documentos tienen títulos, secciones, capítulos. Esto es un modo de organización ya conocido y es raro que nadie lo aplique correctamente utilizando solo con las cabeceras de HTML. La forma correcta indica que debemos utilizar etiquetas de cabeceras del tipo `h1` a `h6`. Todos los documentos _deben_ contener al menos una (1) cabecera `h1`, así el resto sea simplemente texto.





La regla WAI indica otro punto interesante, que suele provocar la inconformidad de todos los documentos que realizan los desarrolladores:





> Since some users skim through a document by navigating its headings, it is important to use them appropriately to convey document structure. Users should order heading elements properly. For example, in HTML, `H2` elements should follow `H1` elements, `H3` elements should follow `H2` elements, etc. Content developers should not "skip" levels (e.g., `H1` directly to `H3`). Do not use headings to create font effects; use style sheets to change font styles for example.





Aquí lo explica de forma clara. El uso de cabeceras debe aplicarse correctamente. No se puede uno saltar un nivel porque el jefe lo dijo, ni tampoco porque quedaba más bonito. Desde que podemos controlar gráficamente todos estos aspectos desde las plantillas de CSS, no existe la necesidad de usar el `h4` a favor del `h3` porque se veía más pequeñito y quedaba mejor. La secuencia es una obligación según las pautas y, contrariamente a lo que estás pensando ahora, no existen limitaciones que te obliguen a utilizarlas de otra forma.





En un documento, puedes aplicar cabeceras de forma errónea, este es un ejemplo que traerá problemas:





> H1 → h2 → h2 → **h4** → h2 → h3 → h4





Como podemos apreciar, me he saltado un paso cuando estoy aplicando un `h4` cuando por serie debe ir un `h3`. Si antes tenía un `h2`, entonces debo terminar aplicando un `h3` y seguir con un `h2`, `h3` o un `h4`. Una secuencia bien armada que no da problemas:





> H1 → h2 → h2 → h3 → h2 → h3 → h3 → h4 → h5 → h4 → h3 → h4 → h2 → h3





Las normas permiten que la secuencia se reinicie en cualquier punto. Esto es normal y muy aplicado. No podemos, por ejemplo, utilizar `h1` cada vez que queremos empezar un nuevo capitulo si ya existe uno que le da una importancia grande al documento en general. Y recuerda, si te saltas la secuencia en un punto no valida el documento.





Para lograr un buen documento, hay que tener orden empezando desde el contenido. Debe tener una coherencia de organización, para que la persona con discapacidad como para los ultra-expertos sin discapacidades no tengan problemas de organización y comprensión del texto.





El uso de las cabeceras es un tema interesante. He visto aplicaciones realmente interesantes en lo que programación se refiera. Cómo se puede analizar un documento y crear índices en tiempo real sacando los datos de las cabeceras. Algo que se puede apreciar utilizando algunos de los wikis disponibles en internet.
  *[WAI]: Web Accessibility Initiative
