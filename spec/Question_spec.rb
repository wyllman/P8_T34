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
		
		context "Comparable methods" do
			it 'Basic methods' do
		 		q2 = P5_T_34::Question.new("201+205=?","Ninguna es correcta", [22, 311, 0] )
		 		q3 = P5_T_34::Question.new("201+205=?","Ninguna es correcta", [22, 311, 0] )
		 		q4 = P5_T_34::Question.new("202+202=?","Ninguna es correcta", [22, 311, 0] )
		 		#Respon_to
		 		expect(@q).to respond_to(:==)
		 		expect(@q).to respond_to(:>)
		 		expect(@q).to respond_to(:<)
		 		expect(@q).to respond_to(:>=)
		 		expect(@q).to respond_to(:<=)
		 		expect(@q).to respond_to(:between?)
		 		#Pruebas
		 		expect(@q == q2).to eq(false)
		 		expect(q2 == q3).to eq(true)
		 		expect(@q < q2).to eq(true)
		 		expect(@q > q2).to eq(false)
		 		expect(@q <= q2).to eq(true)
		 		expect(@q >= q2).to eq(false)
		 		expect(@q.between?(q2,q3)).to eq(false)
		 	end
		end
		
		context "Comparable methods" do
			it 'Basic methods' do
		 		q2 = P5_T_34::Question.new("201+205=?","Ninguna es correcta", [22, 311, 0] )
		 		q3 = P5_T_34::Question.new("201+205=?","Ninguna es correcta", [22, 311, 0] )
		 		q4 = P5_T_34::Question.new("202+202=?","Ninguna es correcta", [22, 311, 0] )
		 		#expect(@q).to respond_to(==)
		 		expect(@q == q2).to eq(false)
		 		expect(q3 == q4).to eq(false)
		 		expect(q2 == q3).to eq(true)
		 		expect(@q < q2).to eq(true)
		 		expect(@q > q2).to eq(false)
		 		expect(@q <= q2).to eq(true)
		 		expect(@q >= q2).to eq(false)
		 	end
		end
	end
end