require 'spec_helper'
require 'P5_T_34'


module P5_T_34
	describe 'Question' do
		before :each do
      			@c = P5_T_34::Question.new("2+5=?","Ninguna es correcta", [1, 5, 6] )
    		end
		context "Constructors test" do
			it 'checking atributes' do
        	   		expect(@c).to respond_to(:text)
				expect(@c).to respond_to(:correct)
				expect(@c).to respond_to(:distractor)
        		end

			it 'checking initialize' do
				expect(@c.text).to eq("2+5=?")
				expect(@c.correct).to eq("Ninguna es correcta")
				expect(@c.distractor).to eq(["1","5","6"])
			end
		end

		context "Methods test" do
                        it 'checking existing methods' do
				expect(@c).to respond_to(:questioning)
				expect(@c).to respond_to(:answers)
				expect(@c).to respond_to(:to_s)
			end
			it 'get question text' do
				expect(@c.questioning).to eq("2+5=?")
				expect(@c.answers.length).to eq(4)
				#@c.answers.each{|i| expect(i).not_to eq(nil)}
				@c.answers.each{|i| expect(i).to match(/.+/)}
				expect(@c.to_s).to match( /^(2\+5=\?)\n(.+)\n(.+)\n(.+)\n(.+)/ )
			end

		end
	end
	
	describe 'Exam' do 
	   before :each do
	     #@c = P5_T_34::Question.new("2+5=?","Ninguna es correcta", [1, 5, 6] )
	     #@n = Node.new(@c, nil)
	   end
	   
	   context "Class node test" do
	     it 'checking class Node' do
	       expect(Node).to respond_to(:new)
	       expect(Node).to respond_to(:value)
	       expect(Node).to respond_to(:next)
	     end
	     
	   end
	  
	end
end

