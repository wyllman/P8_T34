require "P5_T_34/version"

module P5_T_34
  #  La clase QuestionVF describe la estructura de una pregunta
  #de tipo verdadero/falso
  #  Sólo es necesario rellenar la respuesta correcta, y asumimos
  #como incorrecta su contrario
  class QuestionVF < Question
    def initialize(textI="", correctI=nil)
            if (correctI != nil)
                raise ArgumentError, "La respuesta correcta debe ser un booleano" unless (!!correctI == correctI)
                super(textI, correctI, [!correctI])
            else
            
                super(textI)
            end
            
        end
  end
end