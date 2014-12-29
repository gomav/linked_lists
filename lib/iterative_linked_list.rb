class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = nil
  end
end

class IterativeLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def count
    current = @head
    if current.nil?
      0
    elsif current.next_node.nil?
      1
    else
      counter = 1
      while current.next_node !=nil
        counter +=1
        current = current.next_node
        if current.next_node == nil
          return counter
        end
      end
    end
  end

  def push(value)

    current = @head
    node = Node.new(value)
		if @head.nil?
			@head = node
		else
			while current.next_node != nil
				current = current.next_node
			end
			current.next_node = Node.new(value)
		end
  end

  def pop #stopping point keep getting nil
    current = @head
    if current.nil?
      nil
      if head.next_node
        current = head

      elsif current.next_node.next_node.nil?
        current = current.next_node
        data = current_next_node.value
        current.next_node = nil

      else
        data = head.value
        @head = nil
      end
    end
  end

end
