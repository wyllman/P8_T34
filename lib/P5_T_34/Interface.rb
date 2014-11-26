# Encoding: UTF-8
# coding: utf-8
require "P5_T_34/version"



module P5_T_34
    class Interface
        attr_reader :exam, :calification, :correct, :incorrect
        
        def initialize(examI)
            @exam = examI
            @calification = 0;
            @correct = 0;
            @incorrect = 0;
        end
        
        def simulation(answers)
            puts solve_to_s(answers)
        end
        
        #
        def solve (answers)
            #Inicializamos variables
            #act = @exam.top
            @correct = 0
            @incorrect = 0
            @calification = 0
            cont = 0
            
            @exam.each { |act|
                if (answers[cont] == act.correct) then
                    @correct += 1
                else
                    @incorrect += 1
                end
                #act = act.next #Siguente nodo
                cont += 1 #Siguiente respuesta
            }
            @calification = ((@correct * 10) / (@exam.size))
        end
     
        def solve_to_s (answers)
            #Inicializamos variables
            act = @exam.top
            @correct = 0
            @incorrect = 0
            @calification = 0
            cont = 0
            #Comenzamos el examen
            texto = "\nTitulo del examen: " + @exam.title + "\n ---------------------------------------------------------------------- \n"
            while (act != nil)
                texto += cont.to_s + ")  " + act.value.to_s + "\n ------------------------ \n Respuesta: " + answers[cont].to_s
                if (answers[cont] == act.value.correct) then
                    @correct += 1
                    texto += " \t ---> Respuesta Correcta\n ------------------------\n"
                else
                    @incorrect += 1
                    texto += " \t ---> Respuesta Incorrecta\n ------------------------\n\n"
                end
                act = act.next #Siguente nodo
                cont += 1 #Siguiente respuesta
            end
            @calification = ((@correct * 10)/ (@exam.size))
            texto += "Calificación final: " + @calification.to_s
            return texto
     end
        
    end
end