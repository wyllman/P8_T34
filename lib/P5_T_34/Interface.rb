# Encoding: UTF-8
# coding: utf-8
require "P5_T_34/version"



module P5_T_34
    # Define la interfaz para manipular un exámen (inicializarlo, orodenarlo, corregirlo...)
    class Interface
        attr_reader :exam, :calification, :correct, :incorrect, :inverseProc
        
        def initialize(examI)
            @exam = examI # Objeto de tipo Exam que contendrá las preguntas a corregir
            @calification = 0; # Calificación final después de realizar una corrección
            @correct = 0; # Número de respuestas correctas
            @incorrect = 0; # Número de respuestas incorrectas
            
            # Objeto Proc utilizado para el orden descendente de las preguntas
            @inverseProc = Proc.new { |first, second| second <=> first }
        end
        
        # Muestra por pantalla la solución de un exámen paso a paso
        def simulation(answers)
            puts solve_to_s(answers)
        end
        
        # Muestra las preguntas en el orden actual de corrección
        def showQuestions ()
            @exam.to_s
        end 
        
        # Ordena las preguntas según el bloque que se le pase.
        # En caso de no pasarle un bloque, se ordena de forma 
        # ascendente
        def sortQuestions (&sortProc)
            titleTmp = @exam.title
            aux = Exam.new(titleTmp)
            aux.push(*(@exam.sort &sortProc))
            @exam = aux
        end
        
        # Ordena las preguntas usando el objeto Proc predefinido
        # en la clase, que realiza una ordenación descendente.
        def sortIQuestions
            sortQuestions &@inverseProc
        end
        
        # Resolver el exámen obteniendo las repuestas en un array.
        # Retorna la calificación obtenida.
        def solve (answers)
            # Inicializamos variables
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
                cont += 1 # Siguiente respuesta
            }
            @calification = ((@correct * 10) / (@exam.size))
        end
     
        # Resolver el exámen obteniendo las respuestas en un array.
        # Retorna un string que contiene todas las preguntas del 
        # exámen con sus respuestas corregidas y la calificación
        # final.
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