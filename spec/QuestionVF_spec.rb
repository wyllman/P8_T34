# Encoding: UTF-8
# coding: utf-8
require 'spec_helper'
require 'P5_T_34'


module P5_T_34
	describe 'QuestionVF' do
	  before :each do
	    @q = QuestionVF.new("¿Es verdadero?", true) 
	    
	  end
	  context 'Constructor test' do
	    it "Checking initialize" do
	        expect(QuestionVF).to respond_to(:new)
	        expect(@q).to be_a(QuestionVF)
	        expect(@q).to be_a(Question)
	        expect(@q).not_to be_an_instance_of(Question)
	        expect(@q).to be_an_instance_of(QuestionVF)
	    end
	    it "Checking atributes" do
	        expect(@q).to respond_to(:text)
		    expect(@q).to respond_to(:correct)
		    expect(@q).to respond_to(:distractor)
	    end
	  end
	end
end
