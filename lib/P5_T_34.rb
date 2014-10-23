require "P5_T_34/version"

module P5_T_34
  class Question
     attr_reader :text, :correct, :distractor

     def initialize (textI, correctI, distractorI)
        @text = textI
        @correct = correctI
        @distractor = distractorI
     end
     
     def questioning
        return text
     end

     def answers
        return (distractor + [correct]).shuffle
     end

  end
end
