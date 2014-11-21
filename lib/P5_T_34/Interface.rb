# Encoding: UTF-8
# coding: utf-8
require "P5_T_34/version"



module P5_T_34
    class Interface
        attr_reader :exam
        
        def initialize(examI)
            @exam = examI
        end
        
        def simulation(answers)
            puts @exam.solve_to_s(answers)
        end
    end
end