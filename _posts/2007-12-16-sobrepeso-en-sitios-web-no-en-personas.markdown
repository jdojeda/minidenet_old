---
comments: true
date: 2007-12-16 04:51:18
layout: post
slug: sobrepeso-en-sitios-web-no-en-personas
title: Sobrepeso (en sitios web, no en personas)
wordpress_id: 3129
categories:
- Internet
---

![Logotipo de Don Limpio y XHTML](http://www.minid.net/images/1.png)Y nos pasamos 5 años gritando a 4 vientos: utilicen estándares web. Es bueno para esto, es bueno para aquello **y los sitios pesan menos.** Están bien los estándares, en efecto, invitan a realizar sitios _muy livianos_ en peso. Para el lector casual, cuando los autores de sitios web hablamos de "peso" en la web, nos referimos a la cantidad de _kilobytes_ de código que descargamos a nuestra máquina para poder verla, cuantos más kilobytes tenga la página, más tardará en descargarse y ejecutarse. Esto hace que el peso de una página sea uno de los valores más importantes para acelerar la visualización y la utilización de la propia web.





Bien, aunque muchos periódicos se cuelgan medallas por adoptar estándares –y de los cuales felicito por dicha opción– éstos pecan de sobrepeso. Es tal la sorpresa que me llevo, que incluso nunca me lo había imaginado. Todo lo descubrí estudiando y realizando una estadística entre sitios de gran calibre y la cantidad de peticiones HTTP que tienen por página. Es bien sabido –aunque en círculos bastante minoritarios– que los sitios que más rápido van no son aquellos que tienen docenas de peticiones HTTP, aún si están programados con estándares y siguiendo una estricta reserva de elementos, no. Los sitios rápidos son aquellos que, sirven las peticiones HTTP justas, ni de más, ni de menos. Pero éste no es el único factor, pero es uno de los más importantes. Para darles un ejemplo simple: Un sitio estándar que pesa 60KB entre documento HTML y sus 30 iconos tardará más en cargar que el mismo sitio pesando 60KB y una grilla que contiene los 30 iconos todos juntos.




<!-- more -->



Al realizar las pruebas podemos observar la cantidad de milisegundos que hay en cada petición que hace el usuario al servidor cuando quiere ver una página: el servidor busca y envía imagen por imagen, archivo por archivo, traduciendo todo en una cantidad de tiempo nada despreciable. De hecho, os sorprendería saber el ahorro que habría si supiéramos dónde y cómo podríamos atacar esto. Uno dice: pero mi web pesa 60KB, sí, 60KB no es nada para descargarse, pero si esa insignificante cantidad se realizara con 50 peticiones HTTP que generan un tiempo de espera de unos 5 segundos a unas míseras 5 que se hacen en 450ms encontraríais una prominente mejora.





Este tema me trajo una obsesión, a tal punto que ahora ha cambiado mi forma de ver y emprender el desarrollo de cada proyecto. Analizo bastantes cosas y a partir de ahí comienzo a construir. Busco las mejores formas de, sin perder la semántica que me ofrece el código HTML poder obtener páginas con poquísimas peticiones HTTP, resultando en sitios rápidos que generan poco esfuerzo al servidor.





Volviendo al tema del sobrepeso, me sorprendió que muchos periódicos online descorcharan _champagne Pommery_ por utilizar estándares web, pero a la vez, cayeran en un abuso total de los recursos y de las buenas prácticas siendo así un problema para el usuario final: nosotros.





Para ampliarles el panorama, de los periódicos online que he revisado ninguno se mantiene en un peso inferior al de los 500Kb. La media ronda el megabyte de datos transferidos llegando a casos de 3Mb. Increíble. Mostraré las perlas únicamente.





### El listado





Aquí tenéis una lista de los periódicos online de España más conocidos y la relación de peso y peticiones HTTP que tienen:






	
		


			Periódico
			Peso total
			Peticiones HTTP
			Prom. de carga
		
	
	
		


			El País
			
970.28Kb

			
149

			
11s

		
		


			El Mundo
			
549Kb

			
156*

			
5s

		
		


			ABC
			
563Kb

			
149

			
6s

		
		


			La Vanguardia
			
1.98MB

			
181

			
19s

		
		


			El Periódico
			
650Kb

			
142

			
10.40s

		
		


			La Razón
			
1.59MB

			
183

			
33s

		
		


			Público
			
1.64MB

			
199

			
15.46s

		
		


			La Voz de Galicia
			
931Kb

			
205

			
27.46s

		
		 


			20minutos
			
**3.300Kb**

			
**272**

			
**48.43s**

		
	




Los datos fueron sacados de pruebas personales. Para darles una idea, se visitaron las webs con un script cada 5 minutos, con la caché del navegador desactivada y recopilando todos los datos, desde las peticiones HTTP hasta el tiempo de carga y la transferencia total de datos del servidor original del periódico e incluso, de aquellos CDN que utilizan algunos. También las distribución y uso de recursos: peso en documentos, scripts, hojas de estilo, imágenes y otros. Algunos datos les parecerán raros, por ejemplo, que el periódico La Vanguardia y La Razón vayan más o menos por la misma media pero uno le saque una diferencia notable de segundos al otro. Aquí entran varios factores, como los servidores alternativos para servir contenidos tipo: publicidad, scripts, imágenes que aceleran y distribuyen el trabajo y a la vez sirven como caché. Además, también influye mucho cómo utilizan algunos scripts, éstos retardan la carga de la página, generando la sensación de "espera falsa" en los usuarios. Pero esto no se queda aquí, si esto les parece ya exagerado, vamos a otros países. En la lista número dos, la Argentina:






	
		


			Periódico
			Peso total
			Peticiones HTTP
			Prom. de carga
		
	
	
		


			Clarín
			
1.20MB

			
162

			
19s

		
		


			La Nación
			
874KB

			
155

			
52.62s

		
		


			InfoBAE
			
647KB

			
182

			
39.5s

		
		


			Ámbito Financiero
			
714KB

			
113

			
32s

		
		


			Página/12
			
423KB

			
98

			
11.2s

		
	




Los usuarios residentes en Argentina tendrán tiempos de respuesta diferentes a los míos, que estoy localizado en España, igualmente la diferencia es notoria. Hablamos de experiencia del usuario, y da igual si está en la China o en Villa Fiorito.





Y si miramos 3 sitios de noticias importantes de los Estados Unidos, podemos encontrar perlas:






	
		


			Periódico
			Peso total
			Peticiones HTTP
			Prom. de carga
		
	
	
		


			New York Times
			
2.28MB

			
164

			
10s

		
		


			ABC News
			
1.06MB

			
200

			
19.6s

		
		


			USA Today
			
519KB

			
122

			
12.5s

		
		


			CNN
			
709KB

			
170

			
32s

		
	




Sitios como Menéame, Fresqui y Digg tienen su caudal de tráfico. En general, este tipo de sitios generan una actividad efervescente en la comunidad, haciendo que se generen miles de peticiones, votaciones, etc. Es también, un buen caldo de información para ver el tema optimización:






	
		


			Sitio de noticias
			Peso total
			Peticiones HTTP
			Prom. de carga
		
	
	
		


			Meneame.net
			
174KB

			
53

			
2.1s

		
		


			Digg
			
448KB

			
76

			
7.42s

		
		


			Fresqui
			
388KB

			
69

			
6.5s

		
	




Miramos algunos blogs populares, y nos llevamos sorpresas también. Algunos casos han llegado ya a la señal de "adelgazar".






	
		


			Blog
			Peso total
			Peticiones HTTP
			Prom. de carga
		
	
	
		


			Microsiervos.com
			
481KB

			
53

			
4.9s

		
		


			ALT1040
			
**2.10MB**

			
**148**

			
22s

		
		


			Denken Über
			
486.65KB

			
24

			
8.1s

		
	




#### Resumen





Luego de mirar me doy cuenta de la brutalidad de algunos casos. Incluso mirando de cerca el asunto, hasta se puede detectar qué es lo que hace tardar más a la página. En general, el primer problema es la cantidad de imágenes, la fragmentación que genera una página web. Muchos sitios dan la sensación de ser minimalistas, pero por detrás son todo lo contrario: un enjambre de imágenes y efectos. Estas imágenes son lo que, en general, más milisegundos de trabajo contabilizan en una petición. Los hay con pocas, los hay con muchas. Luego están los scripts y las hojas de estilos. Muchos sitios utilizan 2 o 3 hojas de estilos, pero hay algunos que se van de lo normal, llegando a tener unas 12. Los scripts son lo más grave de todo, algunos scripts generan un tiempo de espera o simplemente cargan más datos al voleo haciendo la espera más larga.





La cantidad de información por página es excesiva. Encuentro las páginas de inicio de muchos sitios de noticia sobrecargada de información no relativa a notas del diario, me recuerdan a los portales del año 97, si me piden opinión. Hay excepciones, claro. Las hay. Pero en una mayoría de casos, se respira el aire "te damos de todo para que estés contento", cuando yo creo que tanto yo como otros usuarios lo tomamos distinto.





Creo que hay ponerles a dieta.
  *[Prom.]: Promedio
  *[CDN]: Content Delivery Networks
