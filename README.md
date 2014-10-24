# P5T34

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'P5_T_34'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install P5_T_34

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

1. Repartir las tareas entre los miembros del Equipo de Trabajo.

Crear la estructura del ‘directorio de trabajo del equipo’ haciendo uso de Bundler. Crear un ‘repositorio en Bitbucket’ que contenga el nombre del equipo. Dar permisos de escritura en el repositorio de ‘Bitbucket’ a todos los miembros del equipo y a los profesores de prácticas.

Modiﬁcar los ﬁcheros ‘.gitignore’ y ‘readme.md’. Todos los miembros del equipo, han de realizar al menos una conﬁrmación e incorporarla al repositorio compartido.

2. Implementar una clase Ruby para representar preguntas de selección simple de Exámenes.

Por ejemplo:

¿Cuál es el resultado de sumar 2 y 5?

a) 4

b) 5

c) 6

d) Ninguna de las anteriores

Para el desarrollo de la clase utilizar la metodología de desarrollo dirigido por pruebas (Test Driven Development - TDD) y la herramienta RSpec.

Empezar el desarrollo desde cero, no reciclar codigo ´ .

La clave de esta práctica está en diseñar pruebas (expectativas) que dirijan el desarrollo y si reutiliza otros desarrollos estará haciéndolo mal. Ejemplos de expectativas son las siguientes:

Debe existir una pregunta.

Deben existir opciones de respuesta.

Se debe invocar a un método para obtener la pregunta.

Se debe invocar a un método para obtener las opciones de respuesta.

Se debe mostar por la consola la pregunta y las opciones de respuesta.

3. El Rakefile ha de contener al menos los siguientes objetivos:

$ rake -T

rake -T

rake build # Build exam-0.0.1.gem into the pkg directory

rake install # Build and install exam-0.0.1.gem into system gems

rake release # Create tag v0.0.1 and build and push exam-0.0.1.gem to Rubygems

rake spec # Run RSpec code examples

¿Qué signiﬁcado tienen las optiones de rspec --format documentation y --format html?

Simplemente modifican el formato de salida de los datos, el --format documentation es ideal para volcarlo en un archivo de texto
el --format html es ideal para ejecutarlo directamente en un navegador o volcarlo en un archivo .html

4. Escribir la dirección http del repositorio que se ha creado en Bitbucket en la tarea habilitada en el Campus Virtual.
