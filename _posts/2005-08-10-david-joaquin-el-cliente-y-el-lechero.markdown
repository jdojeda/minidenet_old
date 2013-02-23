---
comments: false
date: 2005-08-10 21:48:00
layout: post
slug: david-joaquin-el-cliente-y-el-lechero
title: David, Joaquín, el cliente y el lechero
wordpress_id: 2491
categories:
- Internet
---

_Borrón y cuenta nueva_. Les voy a explicar qué entiendo por separación del contenido de la presentación. Intentaré ser bueno y didáctico porque me interesa que _todo el mundo_ comprenda bien la metodología. Por vuestro bien.





Cuando uno hace una página _web_, tenga diez documentos o dos mil, está creando en cierta forma un producto que está compuesto por varias capas de tecnologías. El quid de la cuestión es, _¿realmente se aprovechan estas tecnologías debidamente?_ La respuesta en la mayoría de los casos es no. A veces, se utiliza HTML para dar forma y color a una página. A veces se utiliza CSS para dar el efecto hover de los enlaces. Muchas veces se arma una página desde un _script_ de PHP que escupe una página entera de XHTML con atributos presentacionales, en vez de usar _includes_ y plantillas.



<!-- more -->



#### La historia de David y Joaquín, primera parte





Existe un problema. David, un diseñador gráfico de prestigio en el mundo de las revistas, se puso un día hacer páginas webs. Es conocido, lo que le trajo clientes con sobrepeso monetario y unos proyectos interesantes. David se pone a trabajar en los diseños, salen chulísimos en los prototipos de Photoshop. Su cliente, cuando mira ese trabajo gráfico tiene una sensación cercana al orgasmo, felicita a David y le dice que quiere tener el sitio cuanto antes funcionando. David, entre la emoción del reconocimiento de su trabajo contrata a un programador freelance, se llama Joaquín. Los dos se ponen de acuerdo en las líneas de trabajo, David programará el HTML, recortará las imágenes y se las pasará a Joaquín que hará la programación.





David mira su diseño y ve unas cosas que sabe que le complicarán la vida. Coge un programa de edición de HTML controlado por ratón como lo hace en Photoshop. Mira un programa que se llama Dreamweaver y se pone con él.





Comienza a diagramar el sitio como lo hace en Photoshop. Crea una tabla con un montón de celdas. Va poniendo imagen por celda hasta que logra que todo el sitio quede como se ve en Photoshop. Las celdas están plagadas de atributos que definen hasta el más mínimo píxel cómo se verá el sitio. Una vez acabado, se contabilizan cuatro semanas de trabajo. Dios, si ha trabajado David en el sitio, ha coloreado cientos de celdas, palabras. También ha descubierto que con una imagen transparente de un píxel por un píxel se pueden hacer maravillas empujando títulos. Lo que David no ha tenido en cuenta es, que muchas partes serán editadas luego por Joaquín, el programador, por lo que tendrá que explicarle algunas nociones de diseño.





Joaquín mira una página que tiene que programar. Encuentra que, tiene 900 líneas de código HTML. Cada línea es como una colección de pirámides que no acaban, parece un diagrama cardíaco en vertical. Mira la página que tiene que programar, es una lista de resultados. Una tabla compleja de nacimiento, tiene colores de celda, tiene imágenes en algunas celdas, cada imagen tiene tamaños de largo y ancho, en fin, se pone a programarlas. Termina su trabajo y todo queda «intocable».





David mira el resultado, con sudor en la frente, se lo entrega al cliente y el cliente luego de un tiempo pone una cara de discrepancia, le dice: –David, hijo mío, _me encanta_ el sitio, pero **mi secretaria** me dice que no puede leer las tipografías porque son muy pequeñas, creo que tiene razón. El gerente de _marketing_ ha pensado que, el color azul de la cabeza y estos menús no es lo que desea para promover los productos y le gustaría usar el verde de nuestro nuevo producto. Y nuestro desarrollador de negocios cree que el espacio entre la cabecera de nuestro sitio está muy pegado al cuerpo de la página, debería haber un espacio un poco más amplio… que respire… ¿Puedes tenerlo todo para el lanzamiento del viernes? David pone una cara de «trágame tierra» y le dice que le promete por su reputación como buen diseñador lo tendrá todo para el viernes.





Menudo lío se ha metido David.





David llega a su oficina. Abre el código de la página y ve que, perderá de aquí al viernes (4 días) más de 18 horas diarias arreglando cosas. En realidad, no se ha dado cuenta que pasará más de lo que se imagina. Joaquín en su casa sigue jugando a la XBOX, contento de haber cobrado y de no tener que ver más el horror de código que tuvo que trabajar todas estas semanas. Mientras, David en la oficina modificando cada página como puede, cada modificador de color, tipografías, tamaños, píxeles, márgenes y nota que todavía no ha hecho ni el diez por ciento de todo el trabajo. Llama a Joaquín para indicarle que deberá cambiar en todas las cosas que ha programado a este tamaño de tipografía y le dice que debe estirar más el ancho de ciertas cosas en las tablas de resultados. Joaquín, viendo lo que pide comienza a sentir un dolor en la boca del estómago. Un claro síntoma de acidez estomacal les comienza a afectar a los dos. Tanto Joaquín como David están horas y horas corrigiendo detalles de presentación. Joaquín modifica en cada línea de PHP los colorcitos de las celdas, los tamaños de las tipografías, las doble comillas que se le van quedando. David que ya no siente gusto a la comida que ha pedido por teléfono continua trabajando sin parar, le quedan cientos de documentos por corregir. Comienza a maldecir a su cliente, es más, ha pensado en ir a su casa y darle de patadas en el culo, pero aguanta como los más valientes.





Llega el viernes, se realiza la presentación, David y su clientes con los accionistas, todos mirando los resultados. Todos contentos, David no puede ocultar su alivio a pesar que tiene ojeras que le rozan la perilla. Acabada la presentación, su cliente le dice que quiere realizar unas nuevas adiciones al sitio. Quiere poner unas cosas nuevas y cambiar ciertas cosas de la página, mientras David escucha, su cuerpo comienza a experimentar una baja notable de la presión. David se nos va…





David llega a su oficina, arruinado de tanto trabajar y a pesar de que ha ganado dinero, siente que su cuerpo ha trabajado en una semana lo que ha trabajado en meses en la revista. Llama a Joaquín y se da cuenta que Joaquín no lo quiere ver ni en figuritas.





#### Resumen





En esta historia, se cuenta el principal problema de no aplicar sabiamente la metodología de la separación del contenido de la presentación. Queda patente como David y Joaquín han trabajado más de la cuenta y cada uno lo ha hecho incluso en campos que no eran su expertise. Joaquín tuvo que editar varias líneas de PHP que contenían elementos de presentación explícitos en vez de generar una simple estructura en PHP. David tuvo que editar un montón de modificadores y atributos visuales, página por página y encima corregir cualquier tipo de error o resquicios del diseño inicial.





Todo este trabajo se debió porque tanto David como Joaquín no sabían que separando el desarrollo en capas les beneficiaría en varias cosas. Primero en tiempos. David habría diseñado sólo 4 plantillas que estaban compuestas de XHTML libres de atributos visuales. No habría usado XHTML como modelo presentacional y se hubiera abstenido de meter valores que luego le traerían problemas para editar. Habría implantado CSS como capa de presentación, de esta forma controla todo tipo de parámetro de cualquier elemento que se visualiza en una página: márgenes, posición, tamaños, colores, bordes, tipografías, interlineados, etc. Segundo, Joaquín sólo hubiera programado los módulos necesarios implementando las estructuras básicas y semánticas del XHTML olvidándose quizás de atributos `bgcolor="666666" valign="top"` sin tener que repetir cambios significativos. En caso de que ocurriera algo en donde se debe editar un nuevo valor, agregar más tags a la cosa no le costaría mucho, siempre y cuando no tenga que volver a editar 200 líneas de PHP cambiando valores de presentación. Cada uno trabajaría en su capa y se demandaría cosas para realizar cambios significativos modificando pequeños valores, lo que se resume en: 3 semanas menos de trabajo, más televisión, XBOX, sexo gratis y buen provecho en la mesa. Tercero en peso y orden. David hubiera controlado cada aspecto de la página ya que se encuentra ordenada, hubiera editado un par de valores en CSS y las tipografías hubieran cambiado en los 200 documentos. Esto sin tocar una línea de XHTML, sin tener que molestar a Joaquín. Existe un orden en el código que le permite agregar y quitar cosas a gusto sin tener que hacerlo en 200 documentos.





#### La historia de David y Joaquín, segunda parte





David, luego del lanzamiento del sitio se toma un respiro, entra a una web donde explican la metodología de la separación del contenido de la presentación y se da cuenta que era lo que necesitaba aprender. Mientras lee, descubre que existe una forma de separar casi de forma total todo tipo de capas en un desarrollo. Incluso aprendió cosas que no sabía que existían, como CSS y XHTML. Mientras lee fascinado, encuentra esta gráfica que le explica cómo se separa un documento web en capas.





![gráfico](http://www.minid.net/images/32.png)





Mientras mira ese gráfico, comprende que si se aprende a usar CSS y XHTML bien no tendrá que matarse realizando cambios página por página, sino que, al contrario podrá editar cambios que parecían tomar mucho tiempo en nada, y sólo tocando las partes que corresponde. Mientras mancha el teclado con la baba que sale de su boca, vuelve en sí y le escribe un mail a Joaquín diciéndole que implementará esta metodología. Joaquín lee el mail medio con desconfianza, no entiende mucho las ideas que se trae David, pero le echa un ojo al artículo y le entran confianza y se termina emocionando. Se dá cuenta que también dentro de su trabajo puede separar en capas, así que, bajo un estado de éxtasis llama a David y los dos se encuentran como quien se imagina, la escena de amor más hollywodense que uno pueda ver en el cine. En 5 minutos deciden que van a cambiar de modelo de desarrollo de la _web_ que hicieron hace unos días para no tener que sufrir más los cambios que pidan sus clientes en el futuro. Se reúnen en la oficina que tiene David y se ponen en 3 días a separar las cosas como es debido.





David, abre el Dreamweaver y decide trabajar al principio con el ratón. Aprendió las bondades las etiquetas `&lt;div&gt;` y las clases. Escribe la estructura como si se tratara de definir las partes de un documento: esto es un título, esto es aquello y así con todo el resto. Luego, mira el código y se da cuenta que la página de inicio pesa 29 KB comparada con la anterior que pesaba 240 KB. Comienza a agregar imágenes pero se dá cuenta que, con CSS puede obviar de tener que usar imágenes para realizar muchos efectos, así que pasa unas horillas con las hojas de estilo hasta que le queda igual. No puede creer los resultados y decide probar un cambio como si su cliente le pidiera que todas las tipografías deberían ser Verdana en vez de Arial. Entra a la hoja de estilos, busca las clases principales y le agrega el valor Verdana delante del valor Arial. Va al navegador y aprieta F5 y ¡pum! ¡todo el sitio con Verdana! _¡Increíble!_ No tuvo que editar ningúna etiqueta `&lt;font&gt;`, ni gastar centenares de minutos con cada página, todas las páginas ordenaditas e iguales, el sueño del pibe. Joaquín entra a las páginas donde populaban las tablas y se da cuenta que no hay más tablas que la de resultados. No se lo cree ni él mismo que en tan pocas líneas de código la página se vea igual. No ve ni un rastro de atributos ni imágenes que empujan celdas para un lado y para otro. Sólo se limita a corregir la programación de PHP para que los datos salgan más limpios de los que lo había programado. Su código PHP está totalmente resumido, legible y editable a gusto ahora.





David y Joaquín se pasaron menos de una semana trabajando juntos y se dieron cuenta que el esfuerzo valió la pena. Tenían el sitio igual y el cliente ni siquiera se había dado cuenta. Ese día reciben una llamada del cliente, que pide una cosa normal: _su página no se imprime bien y la de su competencia sí_. Quieren imprimir la página de su producto estrella pero cuando ven los resultados salen elementos de navegación y otras cosas que David no tuvo en cuenta. Les pide un presupuesto para hacer una versión imprimible y David acepta el encargo, le dice que lo tendrá en una semana. El cliente como paga no tiene dramas y sigue en lo suyo. David comienza a ver las cosas y se pregunta cómo puede hacer para no tener que trabajar de más, así que, se la juega y entra en Google buscando opciones de CSS para impresión. –tiene que haber algo parecido –dice David con esperanzas. En los primeros resultados sale que, en efecto, con CSS se puede controlar no sólo el aspecto en las impresiones sino que también en otros dispositivos sin tener que hacer mucho esfuerzo. No lo puede creer. Comienza a leer y se da cuenta que agregando una línea en una plantilla de CSS que ya tiene hecha puede llamar a otra, que servirá sólo para cuando el documento se imprima. Se lee las instrucciones para hacerlo y comienza a probar. En una hora ha logrado que la página se imprima a la perfección y con la línea gráfica que quería sin tocar una línea de XHTML. No se puede creer que trabajando de esta forma se puedan crear otras con poco esfuerzo. Mira hacia atrás y se pregunta cómo hubiera sido si tendría que haberlo hecho todo con el módelo que sólo utilizaba HTML. Hubiera tenido que hacer otra versión para impresión, libre de elementos de presentación y con un aspecto logrado a partir de lo mismo: HTML con atributos gráficos para que salga bien en la impresora, lo que se traduce en: ¡una segunda versión del sitio!





Al tener esa imagen en la cabeza, David se retuerce de la fea sensación que le vino al cuerpo. No quiere saber más nada del pasado, ahora quiere disfrutar los 3 días que le quedan por delante para invertirlos en salir con esa chica que dejó plantada tantas noches. Joaquín contento en su casa jugando ese juego de XBOX que se había comprado hace un mes pero que todavía no había podido jugar más de una hora seguida.





Colorín colorado, este cuento se ha acabado.





#### Resumen de la segunda parte





Esto no pasa siempre en esta escala, pero es el ejemplo más común que os encontrareis. Incluso los hay de magnitudes más brutales e irreparables. La lección de este artículo es: si separas en capas, puedes trabajar de forma más cómoda. Puedes extender las funcionalidades sin tener que manipular muchos otras partes, incluso como en este caso, no tendrías que tocar XHTML para hacer una versión de impresión de un simple documento. Si quisieras crear nuevas cosas, sería todo más fácil, crearías nuevas estructuras en XHTML y las modificarías desde CSS y os aseguro algo, no va a ser lo mismo que hacerlo todo con HTML solo.





#### Ventajas de esta metodología







  * Escalabilidad


  * Independencia de lenguajes


  * Menos código


  * Menos peso


  * Menos tiempo de escritura de módulos


  * Menos mantenimiento


  * Menos desorden


  * Menos problemas de compatibilidad


  * Más control


  * Mejor arquitectura


  * Mejor comprensión





#### Final





Espero que esta historia les aclare del porqué hay que separar por capas los desarrollos. No utilizar una tecnología o un lenguaje para lo que no debe y cómo salen las cosas mejor y se permite una flexibilidad más extendida que de la forma tradicional, no sería posible sin pasarse cientos de horas frente al ordenador, mientras tu novia se acuesta con el lechero.





¡Maldito lechero! :)
  *[XHTML]: Extensible Hypertext Markup Language
  *[HTML]: Hypertext Markup Language
  *[CSS]: Cascading Style Sheet
