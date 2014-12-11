require "P5_T_34/version"

module P5_T_34
   # Clase Question implementa atributos para almacenar:
   # una pregunta, una respuesta correcta, y varias 
   # respuestas incorrectas ó distractor
   class Question
     include Comparable  
       
     attr_accessor :text, :correct, :distractor

     def initialize (textI="", correctI=nil, distractorI=nil)
        @text = textI # La pregunta
        @correct = correctI # La respuesta correcta
        if distractorI != nil
            @distractor = distractorI.map{|i| i.to_s} # Array de otras respuestas incorrectas
        else
            @distractor = nil
        end
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
        cont = 97 #Corresponde al char 'A'
	    result = text + "\n"
	    answers.each{|i| result += cont.chr + ") " + i.to_s + "\n"; cont+=1}
	    return result
     end
     
     def <=> (other)
         @text.size <=> other.text.size
     end
     
     def == (other)
         if (@text == other.text) ;true;else;false;end #Compara las cadenas de texto de la pregunta
     end
   end
end