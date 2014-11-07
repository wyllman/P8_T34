require 'spec_helper'
require 'P5_T_34'


module P5_T_34
	describe 'Exam' do
	  before :each do
	    @ex = Exam.new("Prueba 1")
	    @q1 = Question.new("¿Cuál es la salida del siguiente código Ruby? \n class Xyz \n \t def pots \n \t\t @nice \n \t end \n end \n xyz = Xyz.new \n p xyz.pots","nil", ["#<Xyz:0x95d7718>", "0", "Ninguna de las anteriores"])
	    @q2 = QuestionVF.new("¿Es válida la siguiente definición de un hash en Ruby? \n hash_raro = { \n\t [1,2,3] => Object.new(), \n\t Hash.new => :toto \n }", true)
	    @q3 = Question.new("¿Cuál es la salida del siguiente código Ruby? \n class Array \n\t def say_hi \n\t\t \"HEY!\" \n\t end \n end \n p[1,\"bob\"].say_hi", "HEY!", ["1","bob","Ninguna de las anteriores"])
	    @q4 = Question.new("¿Cuál es el tipo del objeto en el siguiente código Ruby? \n class Objeto \n end", "Una instancia de la clase Class", ["Una constante", "Un objeto", "Ninguna de las anteriores"])
	    @q5 = QuestionVF.new("¿Es apropiado que una clase Tablero herede de una clase Juego?", false)
	    @ex.push(@q1,@q2,@q3,@q4,@q5)
	  end
	  context "Class Exam test" do
	    it 'checking class Exam initialize' do
	      expect(Exam).to respond_to(:new)
	      expect(@ex.top.value).to eq("Prueba 1")
	    end
	    it 'checking class Exam push' do
	      expect(@ex.size).to eq(6)
	    end
	    it 'checking class Exam to_s' do
	      #puts @ex
	    end
	  end
	end
end