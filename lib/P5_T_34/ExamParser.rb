# Encoding: UTF-8
# coding: utf-8
require "P5_T_34/version"

module P5_T_34
    # ...
    class ExamParser
        attr_reader :examRip
        
        def initialize()
            @examRip = ExamRipper.new()
        end
        # Carga el script y lo evalua/ejecuta en la clase examRipper
        def load (scriptPath)
            @examRip.instance_eval( File.read( scriptPath ) , scriptPath, 1)
        end
        
    end
end
