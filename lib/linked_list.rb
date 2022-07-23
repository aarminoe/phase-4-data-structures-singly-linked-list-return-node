require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    howFar = 0
    if n < 1 || head.nil? || n > self.length
      return nil 
    else
      last_node = head
      while last_node.next_node 
        howFar += 1
        last_node = last_node.next_node 
      end
    end
    howFar
  end


end
