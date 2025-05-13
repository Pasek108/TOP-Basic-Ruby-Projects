# frozen_string_literal: true

require_relative 'Node'

class Tree
  def initialize(arr)
    @root = build_tree(arr.uniq.sort)
  end

  # takes sorted array of data and turns it into a balanced binary tree
  # returns level 0 root node
  def build_tree(arr, first = 0, last = arr.length - 1)
    return nil if first > last

    mid = first + ((last - first) / 2).floor

    root = Node.new(arr[mid])
    root.left = build_tree(arr, first, mid - 1)
    root.right = build_tree(arr, mid + 1, last)

    root
  end

  # prints visualization of the tree
  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end

  # inserts value to the tree
  def insert(value, node = @root)
    return Node.new(value) if node.nil?

    node.left = insert(value, node.left) if value < node.value
    node.right = insert(value, node.right) if value >= node.value

    node
  end

  # deletes value from the tree
  def delete(value, node = @root)
    return if node.nil?

    if value < node.value
      node.left = delete(value, node.left)
    elsif value > node.value 
      node.right = delete(value, node.right)
    else
      return node.right if node.left.nil?
      return node.left if node.right.nil?

      successor = get_successor(node)
      node.value = successor.value
      node.right = delete(successor.value, node.right)
    end

    node
  end

  # finds the value in the tree
  # returns node with value or nil if not found
  def find(value, node = @root)
    return nil if node.nil?

    return node if node.value == value

    return find(value, node.left) if value < node.value
    return find(value, node.right) if value > node.value
  end

  # traverses the tree in level order and yields each node
  # returns an array of values
  # level order - BFS, top to bottom and left to right
  def level_order(queue = [@root], pos = 0)
    return [] if pos.zero? && queue[pos].nil?
    return queue.map(&:value) if pos >= queue.length

    yield queue[pos] if block_given?

    queue << queue[pos].left unless queue[pos].left.nil?
    queue << queue[pos].right unless queue[pos].right.nil?

    level_order(queue, pos + 1)
  end

  # traverses the tree in pre order and yields each node
  # returns an array of values
  # pre order - DFS, root-left-right
  def preorder(node = @root, arr = [])
    return arr if node.nil?

    yield node if block_given?

    arr << node.value
    preorder(node.left, arr)
    preorder(node.right, arr)

    arr
  end

  # traverses the tree in in order and yields each node
  # returns an array of values
  # in order - DFS, left-root-right
  def inorder(node = @root, arr = [])
    return arr if node.nil?

    yield node if block_given?

    inorder(node.left, arr)
    arr << node.value
    inorder(node.right, arr)

    arr
  end

  # traverses the tree in post order and yields each node
  # returns an array of values
  # post order - DFS, left-right-root
  def postorder(node = @root, arr = [])
    return arr if node.nil?

    yield node if block_given?

    postorder(node.left, arr)
    postorder(node.right, arr)
    arr << node.value

    arr
  end

  # height is a number of edges in the longest path from that node to a leaf node
  # returns height of the node with value or nil if not found
  def height(value)
    node_with_value = find(value)

    return nil if node_with_value.nil?

    calc_height(node_with_value)
  end

  # depth is a number of edges in the path from that node to the tree's root node
  # returns depth of the node with value or nil if not found
  def depth(value, node = @root, depth = 0)
    return nil if node.nil?

    return depth if node.value == value

    return depth(value, node.left, depth + 1) if value < node.value
    return depth(value, node.right, depth + 1) if value > node.value
  end

  # checks if the tree is balanced
  # tree is balanced if the height diff between its left and right subtrees is no more
  # than 1, and both the left and right subtrees are also balanced
  def balanced?(node = @root, height = 0)
    return true if node.nil?

    left_height = calc_height(node.left, height + 1)
    right_height = calc_height(node.right, height + 1)

    (left_height - right_height).abs <= 1
  end

  # rebalances an unbalanced tree
  def rebalance
    @root = build_tree(inorder)
  end

  private

  def get_successor(curr)
    curr = curr.right
    curr = curr.left while !curr.nil? && !curr.left.nil?
    curr
  end

  def calc_height(node, height = 0)
    return (height - 1) if node.nil?

    left_height = calc_height(node.left, height + 1)
    right_height = calc_height(node.right, height + 1)

    [height, left_height, right_height].max
  end
end
