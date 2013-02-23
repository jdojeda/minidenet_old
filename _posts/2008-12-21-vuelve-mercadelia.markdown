---
comments: true
date: 2008-12-21 20:33:27
layout: post
slug: vuelve-mercadelia
title: Vuelve Mercadelia
wordpress_id: 3312
categories:
- Anuncios de Minid.net
---

Vuelve [Mercadelia](http://www.mercadelia.com) luego de 3 años de congelación. Cómo explicar lo que ocurrió en los 3 años que este proyecto _hobbie_ ha padecido, me va a costar un poco debido al cúmulo de cosas.





Para empezar, este proyecto lo aparcamos mayoritariamente por razones personales. Tanto de [Ernesto](http://er.nes.to) como yo, y con el transcurso del verano, las pocas ganas de estar en el ordenador, el poco tiempo que queda fuera de las horas de trabajo, las novias, los amigos y las nuevas aficiones hizo que dejáramos de lado el proyecto. No fue hasta hace unos meses que tomamos fuerzas y empezamos en los ratos libres este proyecto personal para dejarlo online y funcionando.





Regresamos en un momento bastante frenético en el ámbito de las webs de anuncios clasificados. Basta con echar un vistazo por la [categoría Clasificados](http://loogic.com/category/aplicaciones-web/clasificados/) en el blog de negocios [Loogic](http://www.loogic.com) para tener una idea.





### La nueva versión





La nueva versión es –valga la redundancia– nueva de verdad. No hay un _byte_ de información del proyecto anterior, decidí hacer borrón y cuenta nueva de muchas cosas a las que estoy acostumbrado a hacer, de hecho, aprovechando nuestro _know-how_ montamos todo en Ruby on Rails, y en _frontend_ estamos usando técnicas que es muy probable termine aprovechando en los excelentes proyectos que estoy trabajando, pobre Minid.net siempre lo dejamos afuera. Mercadelia me sirve terriblemente de ayuda para esto, es la zona ideal para crear y probar cosas, ver resultados y sacar conclusiones con datos de uso bien reales ajenos al perfil de un bloguer.





La aplicación en comparación con su primera versión es como si habláramos del primer aeroplano con motor y los actuales que van a turbina, que no hay color entre uno y otro. De todas formas, cuando miréis la nueva versión, podréis saborear cosas del pasado, cosas que a nivel de interfaz, usabilidad y otros menesteres funcionaron a la perfección.





#### Las cosas chachi





**Cuenta con un gestor de contenido.** Je, sí, sí… es increíble, pero ya tocaba tener un gestor en buena forma y no tener que tocar nada de base de datos de forma manual ni nada parecido. Aún así, el sitio se mantiene solo y otra parte con ayuda de los usuarios. De esta forma, simplemente usaremos el administrador para borrar aquellos anuncios molestos que han sido marcados por la comunidad o bien aquellos que de entrada vemos que están publicados. De todas formas, Rails te permite trabajar cómodo en este aspecto, montándote _scaffolds_ de cualquier cosa que necesites, y luego nosotros le ponemos nuestro estilo y algunos toques para que quede a nuestro gusto. Realmente no nos llevó mucho tiempo tener algo sólido y todo fue relajado. Lo que no fue relajado fue definir y montar el _frontend_ del sitio.





El _frontend_ del sitio es algo especial. Gira en torno al sistema de listados que vengo trabajando hace aproximadamente 6 años. Innovamos en algunos aspectos con respecto a la versión antigua, pero la base que descubrimos en el pasado la mantendremos. Muchos de los usuarios habituales de Mercadelia notarán que los cambios no son tan radicales.





Hemos incorporado [las recomendaciones de Yahoo](http://developer.yahoo.com/performance/rules.html) para optimización de páginas y peticiones HTTP. En todos los recursos que controlamos las hemos implementado, pero en algunos scripts o funcionalidades externas no hemos podido (Google por ejemplo en el caso de Google Maps no envía sus scripts con compresión gzip). En la mayoría de las páginas tenemos grado de rendimiento B (superior a 80), y en algunas tenemos grado A (superior a 90), para determinar esto hemos utilizado el plug-in creado por Yahoo para [Firebug](http://www.getfirebug.com/): [YSlow](http://developer.yahoo.com/yslow/).





Por otro lado, las nuevas herramientas y el proceso de publicación lo hemos revisado de pe a pa. Era y sigue siendo importantísimo este proceso. En el pasado habíamos mejorado algunas cosas con respecto a otros sitios del mismo sector. El hecho de no registrarte, de hacerlo todo en pocos pasos ya era una bendición. Ahora el proceso es más simple y directo: 1 paso. También en el formulario encontrarán cosas que se activarán y reaccionarán dependiendo las opciones y en nuestra opinión es una de las formas más rápidas de cargar un anuncio.





Pero las novedades del nuevo Mercadelia no se ajustan sólo al proceso de publicación, hay más cosas para enterarse:






	
  1. Re-escritura 100% del código.
		
			
    * Nuevo XHTML y CSS.

			
    * Ruby on Rails, MySQL, páginas estáticas, memcached, etc.

			
    * Framework propio.

		

	
  2. Diseño orientado a la acción.

	
  3. Revisión total de los recursos utilizados.
		
			
    * Las páginas con pesos ideales para todo tipo de dispositivos: 60KB

			
    * Media de 9 peticiones HTTP por página, con un _primed cache_ de 1 petición.

			
    * Clases de CSS revisadas y refactorizadas.

			
    * Compresión de ficheros: .css, .js, .html

			
    * Cabeceras de caducidad (para aumentar el _caching_ de los recursos).

			
    * Apenas 3 imágenes cubren todas las necesidades gráficas del sitio.

		

	
  4. Hacks de Internet Explorer 6 y 7 ajenos al sitio y excluidos en una hoja aparte (que sólo carga IE6 e IE7 y no el resto de navegadores). Recomendamos utilizar otro navegador para mejor performance y seguridad.

	
  5. Framework de desarrollo propio y en fase experimental.

	
  6. JQuery y Google Maps.

	
  7. Soporte UTF-8 y bidi.

	
  8. Internacionalización: varios idiomas.

	
  9. Rutas 100% amigables y sanadas.

	
  10. Categorías e interfaz traducidas al idioma elegido.

	
  11. Sistema más automatizado, que nos libera de trabajo.

	
  12. Soporte de pago con Paypal.

	
  13. Nuevas herramientas de comunicación:
		
			
    * Enviar a un amigo.

			
    * Contactar con el anunciante en la misma página del anuncio.

			
    * Marcar como favorito, inapropiado, mal clasificado y _spam_.

			
    * Lenguaje anticorporativo, que somos gente normal y no necesitamos ponernos corbatas para parecer serios.

		

	
  14. Proceso de publicación revisado y abreviado: 3 pasos (1 opcional).

	
  15. E-mails en formato texto, compatibles con todo.

	
  16. Buscador _powered by_ Google.

	
  17. Soporte de impresión de anuncios (aunque recomendamos no gastar papel).

	
  18. Sitio totalmente amigable en iPhones y iPods Touchs.





#### Nuestra filosofía





La idea de Mercadelia es un sitio libre de información de personas, un gran mercado popular libre, donde la gente publica anuncios y realiza operaciones. **No queremos gente registrada**, creemos que en muchos casos, **registrarse es sólo una barrera más para operar en Internet**. Te registras aquí, allá y terminas loco luego sin saber donde está tu información. Aquí sólo te exigimos **una cuenta de correo electrónico** para comprobar que no eres un robot, eso es todo. A los 60 días, tu anuncio caduca, si no lo renuevas en los próximos 10 días, el sistema automáticamente borra el anuncio como tu correo electrónico, como los datos de tu anuncio. Toda esta información que has publicado ya no estará más a disponibilidad de Internet. Menos problemas para ti, menos problemas para nosotros.





El sitio funciona estupendamente en cualquier iPhone y, supongo, que también lo hará en un iPod Touch. No tengo un iPod Touch a mano, pero en mi iPhone me va perfecto. Estos meses estoy estudiando este aparato a fondo, y creando en mis tiempos libres [un Framework libre de _frontend_ para iPhone](http://www.minid.net/iphone/), así cualquiera se hace una aplicación web orientada a WebKit Mobile.





Hacer esta versión WebKit Mobile no es mucho problema, tenemos una en pruebas y funciona bien. Montamos unas vistas en nuestro proyecto Rails y ya podemos trabajar en vistas pura y exclusivamente para el teléfono usando nuestro framework.





Ventajas que le veo a esto:






	
  1. Recursos únicos para los usen iPhone.

	
  2. Elementos de interfaz de iPhone.

	
  3. Menos código HTML por vista.

	
  4. Menos código CSS.


 


Desventajas, pocas:






	
  1. Otro fin de semana haciendo cosas :)

	
  2. Más trabajo de manutención si se diseñan nuevas cosas.

	
  3. Sólo beneficia a usuarios de iPhone, el resto no se verá muy beneficiado.





#### Mercadelia en el futuro





A corto plazo: colgar la versión iPhone, pero lo más importante: idiomas y países. No nos basta con tener español, inglés y catalán. A nivel de funcionalidades Ernesto tiene algunas ya en mente para irlas incorporando, pero lo más importante es hacer que la web llegue a más regiones en sus respectivos idiomas.





Estamos abiertos a todo tipo de colaboración, pero la que más necesitamos –aparte de poner anuncios– es la de traducir el sitio a los idiomas que nos falten. Traducir Mercadelia es sencillo, las cadenas del sitio están en un fichero de texto modificable con cualquier editor con soporte UTF-8.





Creemos que os debíamos una explicación y que la aplicación estuviese online de nuevo. **Esperamos que esto solvente todos los problemas ocasionados, que os guste y que os sea útil**.





Hemos [creado un Twitter](http://www.twitter.com/mercadelia) para Mercadelia en el cual iremos dando más información y _updates_.





#### Siguiente proyecto





Ernesto está trabajando en una red social vertical destinada a un nicho que actualmente está descuidado pero que tiene un potencial enorme. Hay algunos proyectos similares muy interesantes pero que no han fijado su atención en el público hispano, o pecan de ser muy regionalistas, algo irónico si se trata de proyectos en Internet donde puedes llegar a tanta gente si simplemente te preocupas en internacionalizar tu aplicación. Hará un anuncio más concreto en unos meses junto a una beta privada.
