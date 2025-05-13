# frozen_string_literal: true

require_relative 'Node'

class LinkedList
  attr_reader :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  # adds a new node containing value to the end of the list
  def append(value)
    @size += 1

    if @head.nil?
      @head = Node.new(value)
      @tail = @head
    else
      @tail.next_node = Node.new(value, @tail)
      @tail = @tail.next_node
    end
  end

  # adds a new node containing value to the start of the list
  def prepend(value)
    @size += 1

    if @head.nil?
      @head = Node.new(value)
      @tail = @head
    else
      @head.prev_node = Node.new(value, nil, @head)
      @head = @head.prev_node
    end
  end

  # returns the node at the given index
  def at(index)
    node = @head
    i = 0

    while !node.nil? && i < index
      node = node.next_node
      i += 1
    end

    node
  end

  # removes the last element from the list
  def pop
    return if @tail.nil?

    @size -= 1
    @tail = @tail.prev_node
    @tail.next_node = nil unless @tail.nil?
  end

  # removes the first element from the list
  def shift
    return if @head.nil?

    @size -= 1
    @head = @head.next_node
    @head.prev_node = nil unless @head.nil?
  end

  # returns true if the value is in the list or if yield is true, otherwise returns false
  def contains?(value = nil)
    node = @head

    until node.nil?
      return true if block_given? ? yield(node.value) : node.value == value
      node = node.next_node
    end

    false
  end

  # returns the index of the node containing value or if yield is true, otherwise nil if not found
  def find(value = nil)
    node = @head
    i = 0

    until node.nil?
      return i if block_given? ? yield(node.value) : node.value == value
      node = node.next_node
      i += 1
    end

    nil
  end

  # represents LinkedList objects as strings
  # The format is: nil <- ( value ) <-> ( value ) <-> ( value ) -> nil
  def to_s
    str = 'nil <-'

    node = @head
    until node.nil?
      str += " ( #{node.value} ) "
      str += '<->' unless node.next_node.nil?
      node = node.next_node
    end

    str += '-> nil'
    str
  end

  # inserts a new node with the provided value at the given index
  def insert_at(value, index)
    if index > @size
      append(value)
      return
    end

    @size += 1

    node = at(index)
    new_node = Node.new(value, node.prev_node, node)
    node.prev_node.next_node = new_node
    node.prev_node = new_node
  end

  # removes the node at the given index
  def remove_at(index)
    return if index > @size

    @size -= 1

    node = at(index)
    node.prev_node&.next_node = node.next_node
    node.next_node&.prev_node = node.prev_node

    if node.prev_node.nil? && node.next_node.nil?
      @head = nil
      @tail = nil
    end

    node.value
  end
end
