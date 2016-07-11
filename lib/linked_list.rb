require "linked_list/version"

module LinkedList
  # Your code goes here...

  class List

  	def initialize
  	  @head = nil
  	  @tail = nil
  	  @size = 0
  	end

  	def append(value)
  	  @size += 1
  	  if @head.nil ?
  	  	@head = Node.new(value)
  	  else
  	  	@tail.next_node = Node.new(value)
  	  	@tail = @tail.next_node
  	  end
  	end

  	def prepend(value)
  	  @size += 1
  	  @head.next_node = Node.new(value, @head.next_node)
  	end

  	def List::size
      @size
  	end

  	def head
  	  @head
  	end

  	def tail
      @tail
  	end

  	def at(index)
  	  i = 0
  	  if @size > index
  	  	node = @head.next_node
  	  	until index == i
  	  	  node = node.next_node
  	  	  i += 1
  	  	end
  	  	node.value
  	  end
  	end

  	def pop
  	  i = 0
  	  node = @head.next_node
  	  until i == @size - 1
  	  	prev = node
  	  	cur = node.next_node
  	  	i += 1
  	  end
  	  cur = nil
  	  return prev
  	end

  	def contains?(value)
  	  i = 0
  	  node = @head.next_node
  	  until i == @size
  	    if node.value = value
  	      return true
  	    else
  	      i += 1
  	    end
  	  end
  	end

  	def find(value)
  	  i = 0
  	  node = @head.next_node
  	  until i == @size
  	  	if node.value = value
  	  	  return i
  	  	else
  	  	  i += 1
  	  	end
  	  	return nil
  	  end
  	end

  	def to_s
  	  i = 0
  	  node = @head.next_node
  	  until i == @size
  	  	print "( #{node.value} ) -> "
  	  	i += 1
  	  end
  	end

  end

  class Node

  	attr_accessor :value, :next_node

  	def initialize(value = nil, next_node = nil)
  	  @value = value
  	  @next_node = next_node
  	end
  end
end
