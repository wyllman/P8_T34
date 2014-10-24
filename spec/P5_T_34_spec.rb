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
				expect(@c).to respond_to(:print)
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
end

