# Encoding: UTF-8
# coding: utf-8
require "P5_T_34/version"


module P5_T_34
    # ...
    class ExamRipper 
        attr_reader :finalExam
        #Constructor inicializa las variables
        def initialize()
            @finalExam = Exam.new()
            @questionTmp = nil
        end
        # Definir el titulo del examen
        def title (titleText)
            @finalExam.title = titleText
        end
        #Define el enunciado de una pregunta
        def question (questionText, trueFalseQ=false)
            if (trueFalseQ) 
                @questionTmp = QuestionVF.new(questionText)
            else
                @questionTmp = Question.new(questionText)
            end
            @finalExam.push(@questionTmp)
        end
        #Define la respuesta correcta
        def right (answerText)
            raise RuntimeError, "Falta iniciar una pregunta." unless (@questionTmp != nil)
            raise RuntimeError, "Ya hay una respuesta correcta definida" unless (@questionTmp.correct == nil)
            
            @questionTmp.correct = answerText
            
            if (@questionTmp.instance_of? QuestionVF)
               @questionTmp.distractor = [!answerText ]
            end
            
        end
       # Añade una respuesta incorrecta o distractor
        def wrong (answerText)
            raise RuntimeError, "Falta iniciar una pregunta." unless (@questionTmp != nil)
            raise RuntimeError, "Es una pregunta de tipo Verdadero/Falso. No se le añaden respuestas incorrectas personalizadas" unless (@questionTmp.instance_of? Question)
        
            if @questionTmp.distractor == nil 
                @questionTmp.distractor = [answerText] 
            else
                @questionTmp.distractor << answerText
            end
            
        end
       # Mostrar por pantalla el examen
        def run
            raise RuntimeError, "Falta iniciar un examen." unless (@finalExam != nil)
            
            puts "\n" + @finalExam.to_s
        end
    end
end