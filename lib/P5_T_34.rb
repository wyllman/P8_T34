require "P5_T_34/version"

module P5_T_34
  class Question
     attr_reader :text, :correct, :distractor

     def initialize (textI, correctI, distractorI)
        @text = textI
        @correct = correctI
        @distractor = distractorI.map{|i| i.to_s}
     end
     
     def questioning
        return text
     end

     def answers
        return (distractor + [correct]).shuffle
     end
     def to_s
	result = text + "\n"
	answers.each{|i| result += i + "\n"}
	return result
     end
  end
end
