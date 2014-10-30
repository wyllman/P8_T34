require "P5_T_34/version"

module P5_T_34
   #Clase Question implementa atributos para almacenar:
   # una pregunta, una respuesta correcta, y varias 
   # respuestas incorrectas ó distractor
   class Question
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
	result = text + "\n"
	answers.each{|i| result += i + "\n"}
	return result
     end
   end
end
