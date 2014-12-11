# Encoding: UTF-8
# coding: utf-8
require 'spec_helper'
require 'P5_T_34'


module P5_T_34
    describe 'ExamRipper' do
        before :each do
           @exRip = ExamRipper.new() 
        end
        context "Class ExamRipper test" do
            it 'checking class ExamRipper initialize' do 
                expect(ExamRipper).to respond_to(:new)
                expect(@exRip).to respond_to(:question)
                expect(@exRip).to respond_to(:right)
                expect(@exRip).to respond_to(:wrong)
            end
            it 'checking class ExamRipper atributes' do
                   
            end
        end
    end
end