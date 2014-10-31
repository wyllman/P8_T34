require "P5_T_34/version"


module P5_T_34
  
   class Exam < LList
     # Crea una lista cuyo primer nodo es el nombre ó
     # identificador del examen
     def initialize(nameI)
       super
     end
     
     def to_s
       aux = "Título del examen: " + @top.value + "\n"
       aux += "------------------------------------------------- \n"
       act = @top.next
       while (act != nil)
	 aux += act.to_s
	 aux += " \n ++++++++++++++++++++++++++++++++++ \n"
	 act = act.next
       end
     end
   end
end