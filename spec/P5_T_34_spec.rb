require 'spec_helper'
require 'P5_T_34'


module P5_T_34
	describe 'Question' do
		before :each do
      			@c = P5_T_34::Question.new
    		end
		context "Constructors test" do
			it 'checking atributes' do
        	   		expect(@c).to respond_to(:text)
				expect(@c).to respond_to(:correct)
				expect(@c).to respond_to(:distractor)
        		end
		end
	end
end

