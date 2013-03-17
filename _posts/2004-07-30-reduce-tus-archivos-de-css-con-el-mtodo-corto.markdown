---
comments: false
date: 2004-07-30 09:43:54
layout: post
slug: reduce-tus-archivos-de-css-con-el-mtodo-corto
title: Reduce tus archivos de CSS con el método corto
wordpress_id: 1891
categories:
- Internet
---

Si con CSS se reduce la cantidad de peso por página, ¡porqué no reducir las CSS para que pesen menos! El método es relativamente fácil y les aconsejo también que visiten las especificaciones de la W3C.





Hay dos formas de escribir la misma regla de CSS: la estándar y la _shorthand_. Una es **la larga** y la otra es **la reducida**. Vamos a ver un ejemplo:




    
    <code>div {<br></br>
    margin-top: 10px;<br></br>
    margin-bottom: 15px;<br></br>
    margin-left: auto;<br></br>
    margin-right: 20px;<br></br>
    padding-top: 20px;<br></br>
    padding-bottom: 10px;<br></br>
    padding-left: 15px;<br></br>
    padding-right: 20px;<br></br>
    font-family: Verdana, Arial, san-serif;<br></br>
    font-size: 1em;<br></br>
    font-weight: bold;<br></br>
    line-height: 1.4em;<br></br>
    color: #f00;<br></br>
    }</code>





Luego de aplicar la lógica shorthand, queda:




    
    <code>div {<br></br>
    margin: 10px 20px 15px auto;<br></br>
    padding: 20px 20px 10px 15px;<br></br>
    font: bold 1em/1.4em Verdana, Arial, sans-serif;<br></br>
    color: #f00;<br></br>
    }</code>





A que se ha reducido notablemente todo, pues, así es el mundo corto son formas de expresar las formas estándares pero en espacios reducidos. Esto funciona para casi todas las propiedades del modelo de cajas Box Model del CSS. Pero también a otros atributos como el ejemplo `font:` que modifica las tipografías.





La lógica es simple, si tenemos una caja imaginaria llamada `div` `class=”modelo”` y necesitamos que de margen superior tenga 10 píxeles; de margen lateral izquierdo tenga 15 píxeles; de margen inferior tenga 33 píxeles, finalizando con el margen lateral derecho con 22 píxeles tenemos que escribir:




    
    <code>div.modelo {<br></br>
    margin: 10px 22px 33px 15px;<br></br>
    }</code>





Fue fácil, ahora les contaré cómo adivinar qué posición pertenece a qué margen:




    
    <code>div.nombreclase {<br></br>
    comando: arriba derecha abajo izquierda;<br></br>
    }</code>





Como pueden comprobar, la secuencia cubre en la misma dirección de las agujas del reloj, comenzando siempre por arriba y terminando a la izquierda.





Hay otro caso interesante, nos permite reducir aun más una propiedad _shorthand_. Por ejemplo, si tenemos los 4 lados con la misma propiedad, en vez de escribir:




    
    <code>div.modelo {<br></br>
    margin: 10px 10px 10px 10px;<br></br>
    }</code>





Podemos resumirlo a:




    
    <code>div.modelo {<br></br>
    margin: 10px;<br></br>
    }</code>





Esto genera 10px en cada lado. El navegador siempre interpretará que cada cara tiene que tener 10 píxeles de lado. Seguimos jugueteando con CSS, ahora veremos qué pasaría si ponemos dos valores en vez de uno, tres y cuatro:




    
    <code>div.modelo {<br></br>
    margin: 10px 22px;<br></br>
    }</code>





Aquí el navegador detectará dos valores como margen para una `div` que tiene una clase llamada modelo, entonces recurriendo a la regla de los lados en sentido a las agujas del reloj el primer valor sería el superior e inferior a la vez y el segundo el derecho y el izquierdo a la vez. Esto quedaría en una caja que tiene un margen superior/inferior de 10 píxeles más un margen de 22 píxeles a la derecha y a la izquierda:




    
    <code>div {<br></br>
    margin: superior+inferior derecha+izquierda;<br></br>
    }</code>





O sea, con dos valores se controlan los lados superiores y los lados verticales.





Con tres valores, el navegador ya tiene que interpretar los dos conceptos: el de las agujas del reloj y el del modo resumido:




    
    <code>div.modelo {<br></br>
    margin: 10px 22px 10px;<br></br>
    }</code>





Aquí el navegador creará interpreta que la div llamada modelo tiene que tener 10 píxeles de margen superior (pero no inferior) más 22 píxeles de margenes derecho e izquierdo y finalizando un margen inferior de 10 píxeles.




    
    <code>div.modelo {<br></br>
    margin: superior derecho+izquierdo inferior;<br></br>
    }</code>





Esta es la mejor forma de reducir CSS cuando se trata de posicionar elementos. Ahora, hay otros toques mágicos, comenzando por las agrupaciones.





Podemos decir que los elementos `A`, `B` y `C` serán de color gris `#666`, además incluyen la misma tipografía, el mismo interlineado, dando por hecho que los tres tienen muchas características en común, entonces, cualquier paisano escribiría:




    
    <code>A {<br></br>
    color: #666;<br></br>
    font-family: Arial, sans-serif;<br></br>
    font-size: 10pt;<br></br>
    line-height: 18pt;<br></br>
    }
    
    <p>B {<br></br>
    color: #666;<br></br>
    font-family: Arial, sans-serif;<br></br>
    font-size: 10pt;<br></br>
    line-height: 18pt;<br></br>
    }</p>
    
    <p>C {<br></br>
    color: #666;<br></br>
    font-family: Arial, sans-serif;<br></br>
    font-size: 10pt;<br></br>
    line-height: 18pt;<br></br>
    }</code>





Pero como buen paisano se dá cuenta de la similitud de estos elementos y los agrupa en uno:




    
    <code>A, B, C {<br></br>
    color: #666;<br></br>
    font-family: Arial, sans-serif;<br></br>
    font-size: 10pt;<br></br>
    line-height: 18pt;<br></br>
    }</code>





Esto es un grupo. Cada elemento está separado por una coma ”,” y un espacio. Algunos navegadores interpretan mejor este sistema (A, B, C) y otros sin espacios no tienen problemas también (A,B,C), recomiendo siempre separar con un espacio para no crear confusiones y evitar malentendidos entre navegadores.





Terminando el ejemplo, vamos a aprender también como se manejan las tipografías.





Mientras que `A`, `B` y `C` tienen la misma tipografía. Conviene usar el método corto para especificarlas:




    
    <code>A, B, C {<br></br>
    color: #666;<br></br>
    font: 10pt/18pt Arial, sans-serif;<br></br>
    }</code>





Esto se traduce en estos pasos: tamaño de tipografía, contra-barra, interlineado, espacio, tipografías. Esto da a entender que las tipografías deben ser normales y no negritas:




    
    <code>A, B, C {<br></br>
    color: #666;<br></br>
    font: normal 10pt/18pt Arial, sans-serif;<br></br>
    }</code>





Si van a hacer normales, no hace falta indicarlo en la linea, pero si tiene que ser negrita por ejemplo, conviene poner:




    
    <code>A, B, C {<br></br>
    color: #666;<br></br>
    font: bold 10pt/18pt Arial, sans-serif;<br></br>
    }</code>





Entonces la secuencia seria: peso inclinación tamaño/interlineado tipografías;. Esto podría traducirse en este ejemplo:




    
    <code>A, B, C {<br></br>
    font: bolder italic 12pt/24pt "Courier New", Courier, monospace;<br></br>
    }</code>





Hay más ejemplos shorthands y trucos. Están para los bordes, backgrounds etc. Les recomiendo que terminen de aprender a toda perfección en una especificación del W3C, ahí tendréis toda la información exacta atributo que soporta el método resumido.




 
