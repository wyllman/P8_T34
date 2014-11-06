require 'spec_helper'
require 'P5_T_34'


module P5_T_34
	describe 'QuestionVF' do
	  before :each do
	    @q = QuestionVF.new("¿Es verdadero?",True)
	  end
	  context 'Constructor test' do
	    it "Checking initialize" do
	      expect(QuestionVF).to respond_to(:new)
	    end
	    it "Checking atributes" do
	        expect(@q).to respond_to(:text)
		expect(@q).to respond_to(:correct)
		expect(@q).to respond_to(:distractor)
	    end
	  end
	end
end
