require 'spec_helper'
require 'P5_T_34'


module P5_T_34
	describe 'LList' do 
	   before :each do
	     @q = P5_T_34::Question.new("2+5=?","Ninguna es correcta", [1, 5, 6] )
	     @n = P5_T_34::Node.new(@q, nil, nil)
	     @l = P5_T_34::LList.new(@n)
	   end
	   
	   context "Class node test" do
	     it 'checking class Node' do
	       expect(P5_T_34::Node).to respond_to(:new)
	       expect(@n).to respond_to(:value)
	       expect(@n).to respond_to(:next)
	       # Modf
	       expect(@n).to respond_to(:prev)
	     end
	     
	     it 'checking class Node initialize' do
	       expect(@n.value).to eq(@q)
	       expect(@n.next).to eq(nil)
	       # Modf
	       expect(@n.prev).to eq(nil)
	     end
	     
	   end
	   
	   context "Class LList test" do
	     it 'checking class LList' do
	       expect(P5_T_34::LList).to respond_to(:new)
	       expect(@l).to respond_to(:top)
	       # Modf
	       expect(@l).to respond_to(:tail)
	       
	     end
	     
	     it 'checking class LList initialize' do
	       expect(@l.top).to eq(@n)
	       # Modf
	       expect(@l.tail).to eq(@n)
	     end
	     
	     it 'Checking class LList push method' do 
               expect(@l).to respond_to(:push)
	       expect(@l.push(7)).to eq(2)
	       expect(@l.push(8)).to eq(3)
	       expect(@l.push(9, 10, 11)).to eq(6)
	       # Modf
	       expect(@l.top.prev).to eq(nil)
	       expect(@l.tail.prev.value).to eq(10)
	     end

             it 'Checking class LList to_node method' do
               expect(LList).to respond_to(:to_node)
               expect(LList.to_node(90)).to be_a(Node) 
               expect(LList.to_node(90).value).to eq(90)
	       expect(LList.to_node(90).next).to eq(nil)
	       expect(LList.to_node(90).prev).to eq(nil)
             end  	     
	     
             it 'Checking class LList pop method' do
               expect(@l).to respond_to(:pop)
	       # Modf
	       @l.push(7)
	       expect(@l.pop).to eq(@n)
	       # Modf
	       expect(@l.top.prev).to eq(nil)
             end

             it 'Checking class LList [] operator' do
               expect(@l).to respond_to(:[])
             end
           end
	end
end