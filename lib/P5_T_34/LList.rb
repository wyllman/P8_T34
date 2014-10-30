require "P5_T_34/version"


module P5_T_34
  class LList
    attr_reader :top, :size

    
    def initialize (topI)
      @top = topI
      @tail = topI
      @size = 1
    end
    
    #Insert node or nodes to LList
    def push (newNode, *args)
      @tail.next = newNode
      @tail = newNode
      @size += 1
      args.each { |x| push(x) }
      @size
    end
    
  end
  
end