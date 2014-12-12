require "P5_T_34/version"


module P5_T_34
  # Create a Struct with :value and :next
  # Modificaion: añadido el atributo :prev
  Node = Struct.new(:value, :next, :prev) {
    attr_accessor :prev
  }
  
  # Descripción: Clase lista enlazada.
  #   almacena un nodo top como cabeza de la 
  #   misma y el número de elementos que 
  #   contiene. 
  class LList
    include Enumerable
    
    attr_reader :top, :tail, :size
    
    def initialize (topI=nil)
      #raise ArgumentError, "No puede ser nil" unless (topI != nil)
      if (topI != nil) 
        init(topI)
      else
        @top = nil # cabeza de la lista enlazada, de tipo interno Node
        @tail = @top # cola de la lista enlazada, último nodo
        @size = 0 # Número de nodos de la lista
      end
    end
    
    # Función auxiliar para la inicialización de la lista enlazada
    def init(topI)
      raise RuntimeError, "Lista ya iniciada." unless (@top == nil)
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
       
       return Node.new(value, nil, nil)
    end
    
    # Descripción: Método push que permite insertar uno o 
    #   varios elementos en la lista
    def push (newNode, *args)
      #raise ArgumentError, "Los elementos deben ser de tipo Node" unless newNode.is_a? Node #@top.class
      if (@top == nil) 
        init(newNode)
      else
        @tail.next = LList::to_node(newNode)
        @tail.next.prev = @tail
        @tail = @tail.next
        @size += 1
      end
      args.each { |x| push(x) }
      @size
    end
    
    # Descripción: Método que retorna el primer elemento
    # y lo elimina de la lista
    def pop
      aux = @top
      if (aux != nil) 
        @top = @top.next
        @size -= 1
        if (@top != nil) then
          @top.prev = nil
        end
      end
      return aux
       
    end

    # Descripión: sobrecarga del operador de acceso []
    #   para la clase
    def [] (key)
    end
    
    # Método each.
    def each
      aux = top
      while aux != nil do
        yield aux.value
        aux = aux.next
      end
    end
  end
end