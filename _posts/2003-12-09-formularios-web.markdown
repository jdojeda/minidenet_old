---
comments: false
date: 2003-12-09 09:45:21
layout: post
slug: formularios-web
title: Formularios Web
wordpress_id: 1358
categories:
- Internet
---

Bueno, esto es un artículo relacionado con los formularios, los formularios webs, hechos con HTML o XHTML, vamos a desglosar cada parte de los elementos que lo componen.





> ##### Nota sobre el artículo:
> 
> Este es un artículo, escrito con un fin comunicativo y didáctico para ayudar a aquellos que lo requieran sin pagar un centavo, y es sólo una opinión personal, cualquier coincidencia de código, ejemplos que se asemejen con terceros es pura coincidencia y está fuera de mi alcance.
> 
> Toda la información que se maneja en todos los artículos de minid.net son de carácter público y abierto a todo aquel que desea informarse, cualquier duda o consulta puedes enviar un mensaje utilizando el [formulario de contacto](/contactar/).





### ¿Qué requisitos debo tener para comprender este artículo?





Dado que este curso toca muchos temas relacionados al código XHTML, recomiendo que dejes Frontpage, Dreamweaver, y coge un editor de texto como EditPad Lite o UltraEdit, también requiere de cierta compresión de código XHTML y jerga web.





### ¿En qué mejoramos haciendo los formularios web?





En general cuando uno hace los formularios de forma correcta se está asegurando que el usuario menos experto _pueda llenar un formulario_ sin tener que hacerse preguntas así mismo y quedándose tranquilo de que todo ha marchado _viento en popa_.





**Una regla de oro** para los desarrolladores sobre el uso de Javascript con los formularios es que Javascript puede ser una herramienta perfecta para comprobar que se cumplan ciertas reglas de llenado de datos en un formulario, pero… debéis ir con cuidado, no todo el mundo tiene la versión exacta del navegador, y debéis contemplar la opción de que en caso de no haber javascript que el formulario pueda ser procesado de todas formas, esto para los que no entiendan mi castellano, significa que me refiero al uso de Javascript como algo práctico para no sobrecargar un servidor con comprobaciones (algo realmente insignificante) y poder hacer el primer filtro de información.





Otro factor importante para las personas que se inician en esto es que, siempre el 100% de los casos la comprobación de los datos cuando se realizan dentro del servidor tienen más ventajas que las que se realizan del lado del cliente, para demostrarles esto:





> El usuario Diego llena un formulario de 10 campos, el cual un número de promoción, en el servidor hay una base de datos de todos los números de promoción de la empresa, si el formulario llena mal ese campo, se le puede devolver una página que contiene solamente ese campo “número de promoción” y una explicación muy amigable comentandole que un error existió a la hora de escribir el formulario.





**Otra regla de oro** en lo que refiere la utilización de Javascript en los formularios es que por nada del mundo, debe impedir Javascript la utilización del mismo, me refiero a que, si Javascript es motivo de uso del formulario, sin éste el formulario nunca procesara, entonces entramos en un problema de accesibilidad, considerar esto como una traba a mucha gente que quiere utilizar el formulario y no tiene el navegador correcto o el ordenador en las mismas condiciones que los desarrolladores.





Es solo _una humilde sugerencia_, **no una obligación**.





Adam Kalsey autor de [Simplified Form Errors](http://kalsey.com/simplified/form_errors/index.html), escribió un artículo interesante explicando cómo mejorar la usabilidad en a la hora de mostrar errores en los formularios, con código de ejemplo y todo… imperdible.





### Sobre los formularios web





Los elementos de un formulario XHTML le dan significado a la colección de datos que se recogen de un sitio web. Todos los datos que se ingresen en un formulario serán enviados y procesados por un programa alojado en el servidor  

Los formularios son elementos de bloque que están delimitados por las etiquetas `&lt;form&gt;` y `&lt;/form&gt;`. Dentro de los formularios se alojan una variedad de elementos en línea, llamados _controles_.





Los controles _son mecanismos individuales_ de interface por el cual los datos son recogidos, y consisten en campos de ingreso de texto (_text entry fields_), cajas de verificación (_checkboxes_), botones de radio (_radio buttons_), menús (_menus_), selectores de archivos (_file selectors_), y botones (_buttons_).





Cada control en un formulario se le da un nombre utilizando el atributo `name="nombre".` El nombre de un control actúa como una variable, el valor (value) `value="…"` que se ingrese será enviado y procesador por alguna aplicación de servidor. Todos los controles se definen como “tipo”, de esta forma podemos diferenciar los _tipos de controles_ uno de otros.   

Comencemos con un ejemplo sumamente básico:





`&lt;input type="text" name="provincia" value="" /&gt;`





Asumiendo que un usuario ingresara un dato en este control, por ejemplo la provincia “Coruña” la variable “provincia” tendrá como valor (_value_) “Coruña”. Si ambos son recibidos, juntos con todos los nombres de controles restantes y sus valores forman lo que se conoce por un _set de datos del formulario_ (_form’s data set_).





Cuando un usuario envía el formulario, el set de datos es re-codificado y enviado a alguna aplicación de servidor para ser procesado.





El elemento &lt;form&gt;





Los formularios en XHTML se especifican con el elemento `&lt;form&gt;` sin este elemento el formulario no procesa de forma correcta. Hay tres elementos fundamentables en el elemento `&lt;form&gt;`:







  1. El atributo action es requerido para que el formulario envíe los datos a la dirección web de la aplicación web que procese el set de datos del formulario.


  2. El atributo meted determina que método http será utilizado para enviar los hacia la aplicación de servidor que procesará el set de datos. Hay dos posibles valores para usar:  

  


    * “get” por defecto


    * “post”







  3. El atributo `enctype` especifica como el set de datos será re-codificado para el envío.





`&lt;form action= "www.dominio.com/cgi-bin/form.cgi" method="post"  

enctype="application/x-www-form-urlencoded"&gt;  

&lt;br /&gt;  

&lt;!-- elementos de bloque conteniendo controles en linea --&gt;  

&lt;br /&gt;  

&lt;/form&gt;`





El elemento `&lt;form&gt;` es un elemento de bloque como había explicado, el cual no solamente puede contener controles, sino también puede contener otros elementos de XHTML.





De todas formas, _solamente elementos de bloque pueden ser un elemento hijo del elemento_ `&lt;form&gt;`, donde todos los controles (que son elementos en línea) deben ir insertados dentro de algún elemento en bloque intermediario como por ejemplo (`&lt;fieldset&gt;`, `&lt;table&gt;`, `&lt;div&gt;`, etc.).





El elemento fieldset





Elemento `&lt;fieldset&gt;` es un elemento de bloque, que sirve para agrupar controles de un formulario, la etiqueta `&lt;fieldset&gt;` requiere de otra etiqueta necesaria para su correcto funcionamiento y es la etiqueta `&lt;legend&gt;`.





> ##### Ejemplo:
> 
> `&lt;fieldset title="Datos personales del usuario"&gt;&lt;br /&gt;  

&lt;legend&gt;Datos personales&lt;/legend&gt;&lt;br /&gt;… Aqu&iacute; va una tabla con los controles del formulario…&lt;br /&gt;&lt;/fielset&gt;`





Por ejemplo cuando existen 20 controles **es bueno** tener la oportunidad de **separarlos o diferenciar** un grupo de controles de otros.





Agregando el atributo `title="…"` estamos asegurando **una ayuda extra** a la hora de reconocer ese `&lt;fieldset&gt;`, en muchas formas, una es para los lectores de pantalla y las otras son en el caso más común cuando el puntero del ratón está posado sobre el área del `&lt;fieldset&gt;`.





Como recomendación de **usabilidad extra y una total accesibilidad** para quien está llenando el formulario haciendo uso del teclado es ponerle un atributo `accesskey="…"` el cual hace que una persona pueda saltar de un fieldset a otro.





El elemento legend





Es el complemento ideal y necesario para que aparezca la leyenda en el `&lt;fieldset&gt;`, va ubicado como en el ejemplo anterior, dentro del `&lt;fieldset&gt;`.





El elemento input





El elemento `&lt;input&gt;` es un elemento en línea, también conocido como control, sirve para definir controles que aceptarán el ingreso de datos en un formulario, para ver un ejemplo de un input, mostraremos todos los `&lt;input&gt;` posibles en un formulario:





>   

  


> 
>   


> 
>   


> Nombre:
>   


>   


> &larr; `type="text"`
>   


> 
> 


> 
>   


> Contraseña:
>   


>   


> &larr; `type="password"`
>   

  


> 
>   


> Oculto:
> 
> 


> 
>   


> &larr; `type="hidden"`
>   

  


> 
>   


> Imagen:
>   


>   


> &larr; `type="image"`
> 
> 


> 
>   


> 
>   


> Sistema Operativo:
>   


> Windows: Mac:
>   


> &larr; `type="checkbox"`
> 
> 


> 
>   


> 
>   


> Sexo:
>   


> Hombre: Mujer:
>   


> &larr; `type="radio"`
> 
> 


> 
>   


> 
>   


> Sube imagen:
>   


>   


> &larr; `type="file"`
>   

  


> 
> 


> 
> Un botón cualquiera:
>   


> Hola 2 
>   


> &larr; `type="button"`
>   

  


> 
>   


>   


> 
> 


> 
> &larr; `type="submit"`
>   

  


> 
>   


>   


>   


> &larr; `type="reset"`
>   


> 
> 


> 
>   

  







Para ver un ejemplo verifica el código fuente de esta página.





Mientras más atributos especifiques a un input más posibilidades de que un formulario sea llenado de forma más fácil. Uno de los atributos más importantes es el `tabindex`.





Tabindex es la forma en que el cursor de escritura recorrerá un formulario, moviendo el foco, aunque muchas veces no hace falta por que el curso natural es de arriba hacia abajo y de izquierda a derecha, pueden existir casos que deba ir primero de izquierda a derecha y luego hacia abajo.





Para poder entender esta funcionalidad, haced esto, pongan 3 campos de texto en un formulario, a cada `input` deben ponerle un `tabindex="numero"`, por ejemplo:





> ##### Ejemplo:
> 
> `&lt;input id="Provincia" tabindex="1" /&gt;&lt;br /&gt;&lt;input id="N&uacute;mero" tabindex="3" /&gt;&lt;br /&gt;&lt;input id="Ciudad" tabindex="2" /&gt;`





Luego presionando la tecla Tab podrán observar como el foco o el cursor se sigue el orden de campos que has indicado.





Esto nos permite de cierta forma llenar formularios de una forma más didáctica.





Cada elemento `input` tiene que tener un identificador un `id="…"` así aparecen nuevas funcionalidades, que son aprovechadas por las etiquetas “label”.





Las etiquetas label





Uno se pregunta, para qué funciona esta etiqueta en un formulario. Muchas veces, seleccionar un campo para empezar a escribir, basta con hacer clic en el campo, pero si asignamos etiquetas con un nombre descriptivo a cada campo es otro pequeño granito de arena que agregamos al formulario.





Lo hacemos de una forma fácil, por ejemplo, vamos a hacer una etiqueta “Provincia” para el campo “Provincia” esto hará que cuando alguien realice un clic el foco cambie directamente hacia el mismo campo.





> ##### Ejemplo:
> 
> `&lt;td&gt;&lt;label for="direccionweb"&gt;Direcci&oacute;n Web:&lt;/label&gt;&lt;/td&gt;&lt;br /&gt;  

&lt;td&gt;&lt;input maxlength="30" value="" type="text" id="direccionweb" name="url" title="URL de la p&aacute;gina" lang="es" /&gt;&lt;/td&gt;`





Esto sin dudas mejora la forma en que actuan los formularios, si tienes un sitio web que aprovecha mucho los formularios web, sin dudas debes aplicar estas pocas reglas sobre los mismos.





Las etiquetas group





El elemento `&lt;select&gt;` es un control de formulario, sirve para listar opciones de datos `&lt;options&gt;` y también `&lt;optgroup&gt;`.





### &lt;optgroup&gt;





El elemento `&lt;optgroup&gt;` es un elemento que permite a los autores agrupar opciones `&lt;option&gt;`  

lógicamente. Esto es particularmente útil cuando el usuario debe elegir  

de entre una larga lista de opciones; es más fácil apreciar y recordar  

grupos de opciones relacionadas que una larga lista de opciones  

sueltas. Este elemento va anidado dentro del elemento `&lt;select&gt;` y dentro del mismo van elementos `&lt;option&gt;`. Etiqueta inicial: **obligatoria**, Etiqueta final: **obligatoria**.





>   

  


> 
>   


> 
>   


> Cosmos:
>   


> ningunoportmaster 3 con comos 3.7.1portmaster 3 con comos 3.7portmaster 3 con comos 3.5portmaster 2 con comos 3.7portmaster 2 con comos 3.5irx con comos 3.7rirx con comos 3.5r
> 
> 


> 
>   


> 
>   


>   


>   

  

  

  







> ##### Ejemplo:
> 
> `…&lt;br /&gt;&lt;select name="comos"&gt;&lt;br /&gt;
> 
> 


> 
> &nbsp;&nbsp;&nbsp;&nbsp;&lt;option selected label="ninguno" value="ninguno"&gt;ninguno&lt;/option&gt;&lt;br /&gt;  

&nbsp;&nbsp;&nbsp;&nbsp;&lt;optgroup label="portmaster 3"&gt;&lt;br /&gt;  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option label="3.7.1" value="pm3_3.7.1"&gt;portmaster 3 con comos 3.7.1&lt;/option&gt;&lt;br /&gt;  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option label="3.7" value="pm3_3.7"&gt;portmaster 3 con comos 3.7&lt;/option&gt;&lt;br /&gt;  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option label="3.5" value="pm3_3.5"&gt;portmaster 3 con comos 3.5&lt;/option&gt;&lt;br /&gt;
> 
> 


> 
> &nbsp;&nbsp;&nbsp;&nbsp;&lt;/optgroup&gt;&lt;br /&gt;…`





**Recuerda algo importante:** No es bueno para la lectura sintetizada, o la comprensión natural de estos componentes no es bueno utilizar caracteres raros para trazar líneas y separar grupos de datos, hacerlo con los elementos que HTML les da si es correcto, más fácil, menos problemas.





> ##### No hagáis estas cosas por favor:
> 
> `&lt;option&gt;Cosmo&lt;/option&gt;&lt;br /&gt;&lt;option label="----"&gt;==============&lt;/option&gt;&lt;br /&gt;  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;option label="3.5" value="pm3_3.5"&gt;portmaster 3 con comos 3.5&lt;/option&gt;`





### &lt;option&gt;





El elemento `&lt;option&gt;` es _un control_, cada opción ofrecida por el menú `&lt;select&gt;` se representa por un elemento `&lt;option&gt;`. Un elemento `&lt;select&gt;` debe contener al menos un elemento `&lt;option&gt;`. Etiqueta inicial: **obligatoria**, Etiqueta final: **obligatoria**.





Espero que esta pequeña lección de simple HTML te aclare dudas sobre el funcionamiento de los formularios. Continua agregando dudas, consultas y sugerencias utilizando los comentarios, cualquier error en el artículo, puedes enviar la corrección o la sugerencias utilizando [el formulario de contacto](/contactar/).




 
  *[etc.]: Et Cetera
