require "P5_T_34/version"


module P5_T_34
  # Descripción: Clase lista enlazada.
  #   almacena un nodo top como cabeza de la 
  #   misma y el número de elementos que 
  #   contiene. 
  class LList
    attr_reader :top, :size

    
    def initialize (topI)
      @top = topI
      @tail = topI
      @size = 1
    end
    
    # Descripción: Método push que permite insertar uno ó varios elementos en la lista
    #Insert node or nodes to LList
    def push (newNode, *args)
      raise ArgumentError, "Los elementos deben ser del mismo tipo que top" unless newNode.is_a? @top.class
      @tail.next = newNode
      @tail = newNode
      @size += 1
      args.each { |x| push(x) }
      @size
    end
    
  end
  
end
