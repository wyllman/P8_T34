# Encoding: UTF-8
# coding: utf-8
require "P5_T_34/version"



module P5_T_34
    class Interface
        attr_reader :exam, :calification, :correct, :incorrect, :inverseProc
        
        def initialize(examI)
            @exam = examI
            @calification = 0;
            @correct = 0;
            @incorrect = 0;
            @inverseProc = Proc.new { |first, second| second <=> first }
        end
        
        def simulation(answers)
            puts solve_to_s(answers)
        end
        
        def showQuestions()
            puts @exam
        end 
        
        def sortQuestions(&sortProc)
            @exam = @exam.sort &sortProc
        
        end
        
        def sortIQuestions()
            @exam = sortQuestions &@inverseProc
        end
        
        
        def solve (answers)
            #Inicializamos variables
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
                cont += 1 #Siguiente respuesta
            }
            @calification = ((@correct * 10) / (@exam.size))
        end
     
        def solve_to_s (answers)
            #Inicializamos variables
            @correct = 0
            @incorrect = 0
            @calification = 0
            cont = 0
            #Comenzamos el examen
            texto = "\nTitulo del examen: " + @exam.title + "\n ---------------------------------------------------------------------- \n"
            
            @exam.each { |act|
                texto += cont.to_s + ")  " + act.to_s + "\n ------------------------ \n Respuesta: " + answers[cont].to_s
                if (answers[cont] == act.correct) then
                    @correct += 1
                    texto += " \t ---> Respuesta Correcta\n ------------------------\n"
                else
                    @incorrect += 1
                    texto += " \t ---> Respuesta Incorrecta\n ------------------------\n\n"
                end
                cont += 1 #Siguiente respuesta
            }
            
            @calification = ((@correct * 10)/ (@exam.size))
            texto += "Calificación final: " + @calification.to_s
            return texto
     end
        
    end
end