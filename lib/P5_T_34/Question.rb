# Encoding: UTF-8
# coding: utf-8
require "P5_T_34/version"

module P5_T_34
   #Clase Question implementa atributos para almacenar:
   # una pregunta, una respuesta correcta, y varias 
   # respuestas incorrectas ó distractor
   class Question
     include Comparable  
       
     attr_reader :text, :correct, :distractor

     def initialize (textI, correctI, distractorI)
        @text = textI
        @correct = correctI
        @distractor = distractorI.map{|i| i.to_s}
     end
     
     #Devuelve el texto de la pregunta
     def questioning
        return text
     end
     
     #Devuelve todas las respuestas posibles mezcladas
     def answers
        return (distractor + [correct]).shuffle
     end

     #Convierte las preguntas y las respuestas en una cadena de texto
     def to_s
        cont = 97
	    result = text + "\n"
	    answers.each{|i| result += cont.chr + ") " + i + "\n"; cont+=1}
	    return result
     end
     def <=> (other)
         @text.size <=> other.text.size
     end
   end
end