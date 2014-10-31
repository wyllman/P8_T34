require 'spec_helper'
require 'P5_T_34'


module P5_T_34
	describe 'Question' do
		before :each do
      			@q = P5_T_34::Question.new("2+5=?","Ninguna es correcta", [1, 5, 6] )
    		end
		context "Constructors test" do
			it 'checking atributes' do
        	   		expect(@q).to respond_to(:text)
				expect(@q).to respond_to(:correct)
				expect(@q).to respond_to(:distractor)
        		end

			it 'checking initialize' do
				expect(@q.text).to eq("2+5=?")
				expect(@q.correct).to eq("Ninguna es correcta")
				expect(@q.distractor).to eq(["1","5","6"])
			end
		end

		context "Methods test" do
                        it 'checking existing methods' do
				expect(@q).to respond_to(:questioning)
				expect(@q).to respond_to(:answers)
				expect(@q).to respond_to(:to_s)
			end
			it 'get question text' do
				expect(@q.questioning).to eq("2+5=?")
				expect(@q.answers.length).to eq(4)
				#@q.answers.each{|i| expect(i).not_to eq(nil)}
				@q.answers.each{|i| expect(i).to match(/.+/)}
				expect(@q.to_s).to match( /^(2\+5=\?)\n(.+)\n(.+)\n(.+)\n(.+)/ )				
			end

		end
	end
	
	describe 'LList' do 
	   before :each do
	     @q = P5_T_34::Question.new("2+5=?","Ninguna es correcta", [1, 5, 6] )
	     @n = P5_T_34::Node.new(@q, nil)
	     @l = P5_T_34::LList.new(@n)
	   end
	   
	   context "Class node test" do
	     it 'checking class Node' do
	       expect(P5_T_34::Node).to respond_to(:new)
	       expect(@n).to respond_to(:value)
	       expect(@n).to respond_to(:next)
	     end
	     
	     it 'checking class Node initialize' do
	       expect(@n.value).to eq(@q)
	       expect(@n.next).to eq(nil)
	     end
	     
	   end
	   
	   context "Class LList test" do
	     it 'checking class LList' do
	       expect(P5_T_34::LList).to respond_to(:new)
	       expect(@l).to respond_to(:top)
	       
	     end
	     
	     it 'checking class LList initialize' do
	       expect(@l.top).to eq(@n)
	     end
	     
	     it 'Checking class LList push method' do 
               expect(@l).to respond_to(:push)
	       expect(@l.push(@n)).to eq(2)
	       expect(@l.push(@n)).to eq(3)
	       expect(@l.push(@n, @n, @n)).to eq(6)
	       #expect{@l.push(2014)}.to raise_error(ArgumentError) #Probando inserción de argumentos inválidos
	     end

             it 'Checking class LList to_node method' do
               expect(LList).to respond_to(:to_node)
               expect(LList.to_node(90)).to be_a(Node) 
               expect(LList.to_node(90).value).to eq(90)
             end  	     
	     
             it 'Checking class LList pop method' do
               expect(@l).to respond_to(:pop)
             end

             it 'Checking class LList [] operator' do
               expect(@l).to respond_to(:[])
             end
           end
	end
	describe 'Exam' do
	  before :each do
	    @ex = Exam.new("Prueba 1")
	    @q1 = Question.new("¿Cuál es la salida del siguiente código Ruby? \n class Xyz \n \t def pots \n \t\t @nice \n \t end \n end \n xyz = Xyz.new \n p xyz.pots","nil", ["#<Xyz:0x95d7718>", "0", "Ninguna de las anteriores"])
	    @q2 = Question.new("¿Es válida la siguiente definición de un hash en Ruby? \n hash_raro = { \n\t [1,2,3] => Object.new(), \n\t Hash.new => :toto \n }", "Cierto", ["Falso"])
	    @q3 = Question.new("¿Cuál es la salida del siguiente código Ruby? \n class Array \n\t def say_hi \n\t\t \"HEY!\" \n\t end \n end \n p[1,\"bob\"].say_hi", "HEY!", ["1","bob","Ninguna de las anteriores"])
	    @q4 = Question.new("¿Cuál es el tipo del objeto en el siguiente código Ruby? \n class Objeto \n end", "Una instancia de la clase Class", ["Una constante", "Un objeto", "Ninguna de las anteriores"])
	    @q5 = Question.new("¿Es apropiado que una clase Tablero herede de una clase Juego?", "Falso", ["Verdadero"])
	  end
	  context "Class Exam test" do
	    it 'checking class Exam initialize' do
	      expect(Exam).to respond_to(:new)
	      expect(@ex.top.value).to eq("Prueba 1")
	    end
	  end
	end
end

