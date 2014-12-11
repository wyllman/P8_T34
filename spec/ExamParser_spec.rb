# Encoding: UTF-8
# coding: utf-8
require 'spec_helper'
require 'P5_T_34'

module P5_T_34
    describe 'ExamParser' do
        before :each do
            @exPar = ExamParser.new()
        end
        context "Class ExamParser test" do
            it 'checking class ExamParser initialize' do 
                expect(ExamParser).to respond_to(:new)
                expect(@exPar).to respond_to(:load)
                
            end
            it 'checking class ExamParser atributes' do
                expect(@exPar.examRip).not_to eq(nil)
                expect{@exPar.load(File.dirname(__FILE__) + "/../script/examen001.exrb")}.not_to raise_error
                
            end
            it 'checking class ExamParser methods' do
                
            end
        end
    end
end