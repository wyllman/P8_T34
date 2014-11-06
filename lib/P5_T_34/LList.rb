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
    attr_reader :top, :tail, :size

    
    def initialize (topI)
      raise ArgumentError, "No puede ser nil" unless (topI != nil)
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
      @tail.next = LList::to_node(newNode)
      @tail.next.prev = @tail
      @tail = @tail.next
      @size += 1
      args.each { |x| push(x) }
      @size
    end
    
    # Descripción: Método que retorna el primer elemento
    # y lo elimina de la lista
    def pop
       aux = @top
       @top = @top.next
       if (@top != nil) then
          @top.prev = nil
       end
       return aux
       
    end

    # Descripión: sobrecarga del operador de acceso []
    #   para la clase
    def [] (key)
       #TODO
    end
  end
end