require "P5_T_34/version"


module P5_T_34
  # Create a Struct with :value and :next
  Node = Struct.new(:value, :next)
  
  # Descripción: Clase lista enlazada.
  #   almacena un nodo top como cabeza de la 
  #   misma y el número de elementos que 
  #   contiene. 
  class LList
    attr_reader :top, :size

    
    def initialize (topI)
      @top = LList::to_node(topI)
      @tail = @top
      @size = 1
    end

    # Descripción: Método de clase encargado de convertir
    #   cualquier tipo de dato de entrada a un objeto de
    #   tipo Node. En caso de que el objeto de entrada ya
    #   sea de tipo Node se retorna el mismo objeto.
    def self.to_node (value)
       if (value.is_a? Node) then return value end
       
       return Node.new(value, nil)
    end
    
    # Descripción: Método push que permite insertar uno o 
    #   varios elementos en la lista
    def push (newNode, *args)
      #raise ArgumentError, "Los elementos deben ser de tipo Node" unless newNode.is_a? Node #@top.class
      @tail.next = LList::to_node(newNode)
      @tail = @tail.next
      @size += 1
      args.each { |x| push(x) }
      @size
    end
    
    # Descripción: Método que retorna el primer elemento
    # y lo elimina de la lista
    def pop
       #TODO
    end

    # Descripión: sobrecarga del operador de acceso []
    #   para la clase
    def [] (key)
       #TODO
    end
  end
end
