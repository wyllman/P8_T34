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
                expect(@exRip).to respond_to(:title)
                expect(@exRip).to respond_to(:question)
                expect(@exRip).to respond_to(:right)
                expect(@exRip).to respond_to(:wrong)
                expect(@exRip).to respond_to(:run)
            end
            it 'checking class ExamRipper atributes' do
                expect(@exRip.finalExam).not_to eq(nil)
                #expect(@exRip.questionTmp).to eq(nil)
                expect(@exRip.finalExam.title).to eq("")
            end
            it 'checking class ExamRipper methods' do
                @exRip.title ("Prueba1")
                expect(@exRip.finalExam.title).to eq("Prueba1")
                
                @exRip.question ("PrimeraPregunta")
                expect(@exRip.finalExam.size).to eq(1)
                expect(@exRip.finalExam.tail.value.correct).to eq(nil)
                expect(@exRip.finalExam.tail.value.distractor).to eq(nil)
                
                @exRip.right ("RespuestaCorrecta 1")
                expect(@exRip.finalExam.tail.value.correct).to eq("RespuestaCorrecta 1")
                expect(@exRip.finalExam.tail.value.distractor).to eq(nil)
                
            end
        end
    end
end