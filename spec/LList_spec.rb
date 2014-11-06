require 'spec_helper'
require 'P5_T_34'


module P5_T_34
	describe 'LList' do 
	   before :each do
	     @q = P5_T_34::Question.new("2+5=?","Ninguna es correcta", [1, 5, 6] )
	     @n = P5_T_34::Node.new(@q, nil)
	     @l = P5_T_34::LList.new(@n)
	   end
	   
	   context "Class node test" do
	     it 'checking class Node' do
	       expect(P5_T_34::Node).to respond_to(:new)
	       expect(@n).to respond_to(:value)
	       expect(@n).to respond_to(:next)
	     end
	     
	     it 'checking class Node initialize' do
	       expect(@n.value).to eq(@q)
	       expect(@n.next).to eq(nil)
	     end
	     
	   end
	   
	   context "Class LList test" do
	     it 'checking class LList' do
	       expect(P5_T_34::LList).to respond_to(:new)
	       expect(@l).to respond_to(:top)
	       
	     end
	     
	     it 'checking class LList initialize' do
	       expect(@l.top).to eq(@n)
	     end
	     
	     it 'Checking class LList push method' do 
               expect(@l).to respond_to(:push)
	       expect(@l.push(@n)).to eq(2)
	       expect(@l.push(@n)).to eq(3)
	       expect(@l.push(@n, @n, @n)).to eq(6)
	       #expect{@l.push(2014)}.to raise_error(ArgumentError) #Probando inserción de argumentos inválidos
	     end

             it 'Checking class LList to_node method' do
               expect(LList).to respond_to(:to_node)
               expect(LList.to_node(90)).to be_a(Node) 
               expect(LList.to_node(90).value).to eq(90)
             end  	     
	     
             it 'Checking class LList pop method' do
               expect(@l).to respond_to(:pop)
	       expect(@l.pop).to eq(@n)
             end

             it 'Checking class LList [] operator' do
               expect(@l).to respond_to(:[])
             end
           end
	end
end