# frozen_string_literal: true

require_relative 'Tree'

arr = Array.new(15) { rand(1..100) }
bst = Tree.new(arr)

puts 'Create BST from array of numbers and confirm that the tree is balanced'
bst.pretty_print
puts bst.balanced?
puts ''

puts 'Print out all elements in level, pre, post, and in order'
puts bst.level_order.to_s
puts bst.preorder.to_s
puts bst.postorder.to_s
puts bst.inorder.to_s
puts ''

puts "Print height and depth of #{arr[8]}"
puts bst.height(arr[8])
puts bst.depth(arr[8])
puts ''

puts 'Unbalance the tree by adding numbers > 100 and confirm that the tree is unbalanced'
bst.insert(101)
bst.insert(103)
bst.insert(106)
bst.pretty_print
puts bst.balanced?
puts ''

puts 'Balance the tree and confirm that the tree is balanced'
bst.rebalance
bst.pretty_print
puts bst.balanced?
puts ''

puts 'Print out all elements in level, pre, post, and in order'
puts bst.level_order.to_s
puts bst.preorder.to_s
puts bst.postorder.to_s
puts bst.inorder.to_s
