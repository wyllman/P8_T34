[![Build Status](https://travis-ci.org/wyllman/P8_T34.svg?branch=master)](https://travis-ci.org/wyllman/P8_T34)

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

Implementar una clase Ruby para representar y gestionar listas enlazadas (Linked List).
Por ejemplo, considere la lista (2,3), su representaci´on como una lista enlazada ser´ıa:
En Ruby, puesto que no existe un objeto List, se puede conseguir lo mismo con Arrays:
a = [] a = []
a.unshift 3 a << 2
a.unshift 2 a << 3
Internamente, Ruby crear´a una array como este:
Por lo tanto, los arrays de Ruby pueden funcionar como listas enlazadas, puesto que los m´etodos
push, unshift e insert a˜naden un nuevo elemento a la lista y los m´etodos pop y shift eliminan
un elemento de la lista. Sin embargo, se ha de abordar la implementaci´on de una estructura de
datos de lista enlazada.
Para el desarrollo de la clase utilizar la metodolog´ıa de desarrollo dirigido por pruebas (Test
Driven Development - TDD) y la herramienta RSpec. Empezar el desarrollo desde cero,
no reciclar codigo ´ .
Utilizar un Struct para su definici´on.
# create a Struct with :value and :next
Node = Struct.new(:value, :next)
Ejemplos de definici´on de espectativas son las siguientes:
Exam
Simple_Selection
:Debe existir una pregunta
:Se debe invocar a un m´etodo para obtener la pregunta
:Deben existir opciones de respuesta
:Se debe invocar a un m´etodo para obtener las opciones de respuesta
:Se deben mostrar por la consola formateada la pregunta y las opciones de respuesta
Exam
Node
#Debe existir un Nodo de la lista con sus datos y su siguiente
List
#Se extrae el primer elemento de la lista
#Se puede insertar un elemento
#Se pueden insertar varios elementos
#Debe existir una Lista con su cabeza
Finished in 0.00933 seconds
10 examples, 0 failures2. Repartir las tareas entre los miembros del Equipo de Trabajo.
Utilizar el ‘repositorio de Bitbucket’ con el nombre del equipo creado en la pr´actica anterior.
Todos los miembros del equipo, han de realizar al menos una confirmaci´on e incorporarla al
repositorio compartido.
Utilizar la estructura del ‘directorio de trabajo del equipo’ generado en la pr´actica anterior con
Bundler.
Crear una prueba para la siguiente relaci´on de preguntas de selecci´on simple:
1.-) ¿Cu´al es la salida del siguiente c´odigo Ruby?
class Xyz
def pots
@nice
end
end
xyz = Xyz.new
p xyz.pots
a) #<Xyz:0xa000208>
b) nil
c) 0
d) Ninguna de las anteriores
2.-) La siguiente definici´on de un hash en Ruby es v´alida:
hash_raro = {
[1, 2, 3] => Object.new(),
Hash.new => :toto
}
a) Cierto
b) Falso
3.-) ¿Cu´al es la salida del siguiente c´odigo Ruby?
class Array
def say_hi
"HEY!"
end
end
p [1, "bob"].say_hi
a) 1
b) bob
c) hey!
d) Ninguna de las anteriores
4.-) ¿Cu´al es el tipo del objeto en el siguiente c´odigo Ruby?
class Objeto
end
a) Una instancia de la clase Class
b) Una constante
c) Un objeto
d) Ninguna de las anteriores
5.-) Es apropiado que una clase Tablero herede de una clase Juego.
a) Cierto
b) Falso
3. Escribir la direcci´on http del repositorio que se ha creado en Bitbucket en la tarea habilitada
en el Campus Virtual.
