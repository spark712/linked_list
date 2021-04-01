# frozen_string_literal: true

class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = head
    @tail = tail
  end

  def append(val)
    new_node = Node.new(val)
    @head ||= new_node
    if !@tail
      @tail = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
  end

  def prepend(val)
    new_node = Node.new(val)
    if @head.nil?
      @head = new_node
    else
      prev_head = @head
      @head = new_node
      @head.next_node = prev_head
    end
  end

  def size
    count = 0
    return "Empty List." if head.nil?
    current_node = @head
    until current_node.nil?
      current_node = current_node.next_node
      count += 1
    end
    "The size of the list is: #{count}"
  end

  def at(index)    
    return "List is empty." if @head.nil?
    count = 0
    current_node = @head
    until current_node.nil?
      return "The element at index #{index} is : #{current_node.value}" if count == index
      current_node = current_node.next_node
      count += 1
    end
  end

  def pop
    return 'No element to pop.' if head.nil?
    current_node = @head
    until current_node.next_node == @tail
      current_node = current_node.next_node
    end
    current_node.next_node = nil
    @tail = current_node
  end

  def contains?(val)
    return "The list is empty" if @head.nil?
    current_node = @head
    until current_node.nil?
      return true if current_node.value == val
      current_node = current_node.next_node
    end
    return false
  end

  def find(val)
    return "List is empty." if @head.nil?
    count = 0
    current_node = @head
    until current_node.nil?
      return "The element #{val} is at index: #{count}" if current_node.value == val
      current_node = current_node.next_node
      count += 1
    end
    return "The element #{val} is not in the list." 
  end
  
  def insert_at(val, index)
    if index == 0
      prepend(val)
    else
      new_node = Node.new(val)
      count = 0
      current_node = @head
      until count == index - 1
        current_node = current_node.next_node
        count += 1
      end
      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
    end
  end

  def remove_at(index)
    return "Empty List." if @head.nil?
    return "Invalid Index" if index == size
    count = 0
    current_node = @head
    until current_node.nil?
      if index == 0
        @head = @head.next_node
        return
      elsif count == index - 1
        current_node.next_node = current_node.next_node.next_node
      else
        current_node = current_node.next_node
      end
      count += 1
    end
  end

  def to_s
    return "Empty list." if @head.nil?
    list_string = ''
    current_node = @head
    until current_node.nil?
      list_string += "(#{current_node.value}) -> "
      current_node = current_node.next_node
    end  
    p list_string + "nil"
  end

end

class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
