require "P5_T_34/version"


module P5_T_34
   # Define un tipo de LList específico para la creación de exámenes
   # y los métodos necesarios para su manejo
   class Exam < LList
     
     # Crea una lista cuyo primer nodo es el nombre ó
     # identificador del examen
     def initialize(nameI)
       super
     end
     
     #Devuelve un examen entero, comvertido a string
     def to_s
       aux = "Título del examen: " + @top.value + "\n"
       aux += "------------------------------------------------- \n"
       act = @top.next
       while (act != nil)
	 aux += act.to_s
	 aux += " \n ++++++++++++++++++++++++++++++++++ \n"
	 act = act.next
       end
       return aux
     end
   end
end