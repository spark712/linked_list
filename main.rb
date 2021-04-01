# frozen_string_literal: true

require_relative 'linked_list

first_list = LinkedList.new
p first_list.size
first_list.append(3)
p first_list.size
first_list.to_s
first_list.prepend(2)
p first_list.size
first_list.to_s
first_list.prepend(1)
first_list.append(4)
first_list.append(5)
first_list.to_s
p first_list.size
p first_list.contains?(3)
p first_list.contains?(8)
p first_list.at(2)
p first_list.find(2)
first_list.pop
first_list.to_s
p first_list.size
p "Head: #{first_list.head.value}"
p "Tail:#{first_list.tail.value}"
first_list.insert_at(8, 1)
first_list.to_s
first_list.remove_at(1)
first_list.to_s
