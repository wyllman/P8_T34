require "P5_T_34/version"


module P5_T_34
  class LList
    attr_reader :top, :size

    
    def initialize (topI)
      @top = topI
      @tail = topI
      @size = 1
    end
    
    
    def push (newNode)
      @tail.next = newNode
      @tail = newNode
      @size += 1
      @size
    end
    
  end
  
end