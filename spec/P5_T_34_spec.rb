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
	
	describe 'Exam' do 
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
               #aux = LList.to_node (23)
               expect(LList.to_node(90)).to be_a(Node) 
               expect(LList.to_node(90).value).to eq(90)
             end  	     
	     
             it 'Checking class LList pop method' do
               expect(@l).to respond_to(:pop)
             end
           end
	end
end

