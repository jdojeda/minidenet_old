---
comments: false
date: 2002-12-14 19:50:03
layout: post
slug: cdigo-limpio
title: Código limpio
wordpress_id: 738
categories:
- Internet
---

¿Miras el código de tus paginas y te agarras los pelos? Suele pasar. En el diseño web todo tiene que ver, un espacio, hace que la página posiblemente se vea mal en un browser, un border mal aplicado y todo a la basura de nuevo.





Este artículo pretende introducir al desarrollador a solucionar cosas para que en un futuro a la hora de hacer un cambio, todo sea menos tedioso,  también le implica una filosofía de desarrollo, la cual hace de esta un dolor menos de cabeza.





## Introducción





Antes de empezar a mostrar código, debes tirar todo tipo de programas WYSIWYG, tipo dreamweaver, front page, aca no te sirven de nada.



                          



Debes conseguirte un buen programa de edición de texto, BBEdit lite es gratuito para sistemas operativos Macintosh, HTMLkit también y es para Windows.





En el transcurso de este artículo, vamos a ir ubicando ejemplos de como programar, como acomodar el código de nuestro HTML, un código limpio de errores, prolijo para la lectura.





## Los espacios en HTML





Claudia, la chica más apuesta de la empresa AKA, la adorable secretaria del jefe que siempre tiene problemas con su Outlook, nos dice que estuvo viendo la página y que se ven espacios blancos en su navegador Netscape 4.0, que nunca lo actualizó al igual que su Windows 95, a no preocuparse… en si ella tiene razón…





Los browsers en muchos casos interpretan los espacios entre el código como posibles elementos visuales del documento. Por ejemplo cuando editamos código en HTML lo importante es ubicar cada elemento como deba ir, si van juntos, deben estar pegados, sino separados.





Aquí va unos ejemplos claros de errores comunes que podemos obtener cuando desarrollamos con imágenes:




    
    &lt;table&gt;
       &lt;tr&gt;
        &lt;td&gt;<br></br>
    &lt;img src=&#34;hola.jpg&#34; /&gt;
        &lt;/td&gt;      <br></br>
    &lt;/tr&gt;
       &lt;/table&gt;



            



Esto nos muestra que mal que están organizados los tags, estos están separados por interlíneas mal ubicadas, en síntesis hay espacios ocultos, por ende en algunos navegadores se va a notar la diferencia.





Además todo esta tan desorganizado que parece una batalla campal… por eso lo primero que debemos hacer es corregir el tag `td` y el tag `img`.




    
    &lt;table&gt;
       &lt;tr&gt;
        &lt;td&gt;&lt;img src=&#34;hola.jpg&#34; /&gt;&lt;/td&gt;      <br></br>
    &lt;/tr&gt;
       &lt;/table&gt;





Ahí acabamos de eliminar el espacio que seguramente nos esta afectando, luego observemos que los `tr` y el tag `table` están desorganizados con espacios, esto literalmente no afecta para nada la muestra, pero están mal ubicados.





Un ejemplo sano sería:




    
    &lt;table&gt;
       &lt;tr&gt;
        &lt;td&gt;&lt;img src=&#34;hola.jpg&#34; /&gt;&lt;/td&gt;      
       &lt;/tr&gt;<br></br>
    &lt;/table&gt;





Ahora la cosa cambia para bien. Si seguimos es incontable la cantidad de formas de organizar el código para una buena lectura, corrección, y desarrollo.





### Otro ejemplo son los links…




    
    
        &lt;td&gt;
    
    <p>&lt;a href=&#34;#web&#34;&gt;</p>
    
    <p>&lt;img src=&#34;a.jpg&#34; /&gt;</p>
    
    <p>&lt;/a&gt;</p>
    
    <p>&lt;/td&gt;      <br></br>
    





Este código de muestra se ve horrible, pero es lo que vemos comúnmente, así que nos ponemos manos a la obra y corregimos el tag `a` primero.




    
    
        &lt;td&gt;
    
    <p>&lt;a href=&#34;#web&#34;&gt;&lt;img src=&#34;a.jpg&#34; /&gt;&lt;/a&gt;</p>
    
    <p>&lt;/td&gt;      <br></br>
    





Bien que hayamos anidado bien el tag `a` no significa que todo es de color oro, falta el tag `td`, para que todo quede perfecto.




 
