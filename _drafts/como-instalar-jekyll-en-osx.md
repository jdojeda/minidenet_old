---
title: Cómo instalar Jekyll en OSX
---

Jekyll es ahora la joya de la casa. La Helena de Troya de mis ordenadores. Es el sistema de análisis de archivos que utilizo para realizar y mantener este blog. Si no sabes que es Jekyll, te recomiendo que leas [mi anterior entrada][minid] sobre el tema así entiendes qué es Jekyll, cómo funciona y sus ventajas. Pero si lo que deseas es empezar ya a probar una nueva forma de bloguear entonces empieza por instalar Jekyll y probar como funciona.

Para tener todo a punto, hay instalar unas cosas antes, la gran mayoría son prerequisitos obligatorios para poder tener todo funcionando. Sigue estos pasos y en nada tienes todo preparado.

### Instalar XCode

Jekyll, a diferencia de otros sistemas, requiere de una instalación concreta de programas y módulos. Lo primero que tenemos que tener instalado en nuestro Mac, es XCode. Y la mejor forma de instalarlo, ahora mismo, [es a través de el Mac App Store](https://itunes.apple.com/es/app/xcode/id497799835?mt=12 "XCode").

Una vez instalado XCode, es importante instalar las herramientas de consola. Y como esto no se instala de forma automática, hay que indicarlo en las Preferencias de XCode. En la sección *Downloads* de las preferencias encontrarás, dentro de la pestaña *Components* los paquetes para instalar las herramientas de consola. En la lista tendrás seguro: iOS 6.0, iOS 5.1, iOS 5.0 y las Command Line Tools. La instalación lleva un rato, aunque fueren 114MB los que tiene que descargar, el proceso, no sé porqué, es lento.

Para saber realmente si tienes instalado GCC en tu Mac, debes abrir un Terminal y ejecutar este comando:

{% highlight bash %}
	$ gcc --version
{% endhighlight %}

Y si va todo bien debería decirte:

{% highlight bash %}
	`i686-apple-darwin10-llvm-gcc-4.2 (GCC) 4.2.1` 
{% endhighlight %}

Si aparece este mensaje es que ya puedes realizar el resto del instalaciones sin problemas.

***

### Instalando Homebrew

Si no tienes Homebrew, es hora ya de instalar este gestor de paquetes. Mi recomendación si tienes algún gestor de paquetes como Ports, es quitarlo así no generan conflictos. Homebrew es una maravilla y te permite instalar muchas cosas sin hacerte problemas. Para instalarlo, corremos el siguiente comando:

{% highlight bash %}
	$ ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
{% endhighlight %}

Sigue todas las instrucciones que te diga la instalación. No debería llevarte mucho. Una vez instalado Homebrew, puedes instalar cosas con el comando:

{% highlight bash %}
	$ brew doctor
{% endhighlight %}

Y si te dice `Your system is raring to brew` es porque lo tienes instalado perfecto. Sino te dirá algo así:

{% highlight bash %}
	Warning: Your Homebrew is outdated
	You haven't updated for at least 24 hours, this is a long time in brewland!
{% endhighlight %}


### Opcional: instalar Git

El siguiente paso es instalar [Git][git]. Aunque no es necesario, es recomendable ya que de esta forma podremos clonar repositorios y subir nuestro blog a Github para tener una copia backup. Otra de las razones es que la gran mayoría de los plugins están en Github, algunos conversores de un CMS a Markdown sólo están ahí y conviene con una línea de comando ya bajarlos y tenerlos listos.

{% highlight bash %}
	$ brew install git
{% endhighlight %}


### Instalar Ruby

El siguiente paso sería instalar Ruby. [Ruby][ruby] es un lenguaje de programación que utiliza Jekyll y es recomendable tenerlo instalado. Hay que instalar la última versión. Si tienes Mac OS X Mountain Lion, tendrás la versión 1.8.7. Según los tutoriales que he leído, lo más recomendable es tener instalado RVM (Ruby Version Manager) en el Mac. Esto permite realizar varias instalaciones de Ruby en un mismo ordenador y, indicar cuál es la correcta. De esta forma si un día queremos tener algo que funciona sólo en alguna versión antigua podríamos hacerlo con RVM. Instalar RVM es relativamente fácil, abre un Terminal y escribe:

{% highlight bash %}
	$ brew tap homebrew/dupes
	$ brew install autoconf automake apple-gcc42 tcl libksba
	$ curl -L https://get.rvm.io | bash -s stable --ruby
{% endhighlight %}

Sigue los pasos, y cuando tengas instalado RVM, puedes instalar Ruby. Mi recomendación es la 1.9.2 para arriba (1.9.3 ahora creo que van) y con esto ya podrías correr sin problemas Jekyll. Para realizar esto, antes de instalar Ruby tenemos que comprobar si RVM cumple los requerimientos (a veces hace falta instalar algo):

{% highlight bash %}
	$ rvm get head
{% endhighlight %}

Cualquier librería que te falte la puedes instalar usando el comando `brew install`. Si no te faltó nada, entonces ya puedes instalar Ruby:

{% highlight bash %}
	$ rvm install 1.9.3  --with-gcc=clang
{% endhighlight %}

Una vez instalado debemos configurarlo como la versión de Ruby oficial en nuestra máquina:

{% highlight bash %}
	$ rvm use 1.9.3 --default
{% endhighlight %}

Utiliza el comando `$ ruby -v` para verificar que realmente tienes oficializada la versión 1.9.x. Si todo está bien deberías ver algo así como `ruby 1.9.3p392 (2013-02-22 revision 39386) [x86_64-darwin12.2.0]`.

{% highlight bash %}
	$ rvm use 1.9.3 --default
{% endhighlight %}

Con esto ya podemos tirar para adelante con la instalación de Jekyll.

### Instalando Jekyll

La mejor forma de instalar Jekyll es con RubyGems. Si no tienes instalado RubyGems, puedes antes comprobarlo en la Consola ejecutando `$ gem -v`. Si tienes instalado entonces debes ejecutar:

{% highlight bash %}
  gem install jekyll
{% endhighlight %}

Luego instala las siguientes gemas: `directory_watcher`, `liquid`, `maruku` y `classifier` con el instalador de gemas. Es probable que no tengas las últimas versiones de gemas, es buen tiempo para ejecutar un upgrade de todas las gemas:

{% highlight bash %}
  sudo gem update --system
{% endhighlight %}

Bien, de todas las gemas, [Maruku][mar] es una de las gemas encargadas de interpretar los archivos de Markdown. Maruku no es una mala gema pero muchos prefieren [RDiscount][rd] por su velocidad. Yo también elegí esta gema. Para instalar RDiscount simplemente usamos RubyGems:

{% highlight bash %}
  $ sudo gem install rdiscount
{% endhighlight %}

Luego podemos ejecutar RDiscount con Jekyll así:

{% highlight bash %}
  $ jekyll --rdiscount
{% endhighlight %}

O bien en nuestro archivo _config.yml podemos poner:

{% highlight bash %}
  markdown: rdiscount

Esto hará que todas las veces que ejecutes `jekyll --server` cargue por defecto RDiscount cuando necesite procesar Markdown.





[mar]: http://maruku.rubyforge.org/ "Maruku: a Markdown-superset interpreter"
[rd]: https://github.com/rtomayko/rdiscount "rtomayko/rdiscount · Github"





[minid]: http://minid.net/2013/02/27/una-nueva-forma-de-bloguear/ "Blogueando como un Hacker con Jekyll"
[jk]: http://jekyllrb.com/  "Google Search for life"
[tom]: http://tom.preston-werner.com/ "Tom Preston-Werner"
[git]: http://github.com/ "Github · Build software better, together."
[pages]: http://pages.github.com/ "Github Pages"
[ruby]: http://www.ruby-lang.org/es/ "Lenguaje de Programación Ruby"
[text]: http://textile.sitemonks.com/ "Textile 2.2 Test Page"
[md]: http://daringfireball.net/projects/markdown/ "Daring Fireball: Markdown"
[liq]: http://liquidmarkup.org "The Liquid Templating Markup"