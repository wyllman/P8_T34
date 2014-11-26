# Encoding: UTF-8
# coding: utf-8
require "P5_T_34"
require "spec_helper"


module P5_T_34
    	describe 'Interface' do
		    before :each do
		        @ex = Exam.new("Prueba 1")
	            @q1 = Question.new("¿Cual es la salida del siguiente codigo Ruby? \n class Xyz \n \t def pots \n \t\t @nice \n \t end \n end \n xyz = Xyz.new \n p xyz.pots","nil", ["#<Xyz:0x95d7718>", "0", "Ninguna de las anteriores"])
	            @q2 = QuestionVF.new("¿Es válida la siguiente definición de un hash en Ruby? \n hash_raro = { \n\t [1,2,3] => Object.new(), \n\t Hash.new => :toto \n }", true)
	            @q3 = Question.new("¿Cual es la salida del siguiente codigo Ruby? \n class Array \n\t def say_hi \n\t\t \"HEY!\" \n\t end \n end \n p[1,\"bob\"].say_hi", "HEY!", ["1","bob","Ninguna de las anteriores"])
	            @q4 = Question.new("¿Cual es el tipo del objeto en el siguiente codigo Ruby? \n class Objeto \n end", "Una instancia de la clase Class", ["Una constante", "Un objeto", "Ninguna de las anteriores"])
	            @q5 = QuestionVF.new("¿Es apropiado que una clase Tablero herede de una clase Juego?", false)
	            @ex.push(@q1,@q2,@q3,@q4,@q5)
	            @anw = ["nil", false, "HEY!", "Ninguna de las anteriores", false]
		        @int = Interface.new(@ex)
    		end
    		
    	    context 'Class Interface test' do
    	        
    	        it "Checking initialize()" do
    	            expect(Interface).to respond_to(:new)
    	            expect(@int.exam).not_to eq(nil)
    	            expect(@int.calification).to eq(0)
    	        end
    	        
    	        it "Checking Simulation method" do
    	            expect(@int).to respond_to(:simulation)
    	            #puts @int.simulation(@anw)
    	        end
    	        
    	        it "Checking Solve methods" do
    	        	expect(@int).to respond_to(:solve)
    	        	expect(@int).to respond_to(:solve_to_s)
    	        	
    	        	expect(@int.solve(@anw)).to eq(6)
    	        	@int.solve_to_s(@anw)
    	        	expect(@int.calification).to eq(6)
    	        end
    	    end
    	end
    		
end