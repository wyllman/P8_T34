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
				expect(@c.distractor).to eq([1, 5, 6])
			end
		end
	end
end

