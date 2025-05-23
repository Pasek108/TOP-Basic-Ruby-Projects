# frozen_string_literal: true

class Node
  attr_accessor :value, :prev_node, :next_node

  def initialize(value = nil, prev_node = nil, next_node = nil)
    @value = value
    @prev_node = prev_node
    @next_node = next_node
  end
end
