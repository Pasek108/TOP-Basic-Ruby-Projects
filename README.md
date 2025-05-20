<h1 align="center">TOP-Basic-Ruby-Projects
 - Readme</h1>
<p align="center">
  <strong>
    Collection of my solutions for basic projects from <a href="https://www.theodinproject.com" target="_blank">The Odin Project (TOP)</a> full-stack curriculum
  </strong>
</p>
<div align="center">
  <a href="https://www.theodinproject.com">
    <img src="_for_readme/banner.png">
  </a>
</div>

<br>

# Table of Contents
* [The Odin Project :thinking:](#the-odin-project-thinking)
  * [What is it](#what-is-it)
  * [Is it worth doing](#is-it-worth-doing)
* [Overview :sparkles:](#overview-sparkles)
  * [About](#about)
  * [Features](#features)
  * [Technologies](#technologies)
  * [Setup](#setup)
* [Details :scroll:](#details-scroll)
  * [User interface](#user-interface)

<br>

# The Odin Project :thinking:

## What is it  
[The Odin Project](https://www.theodinproject.com) is a free, open-source curriculum that teaches web development from the ground up. It covers HTML, CSS, JavaScript, Ruby, Git, React, and back-end technologies like Node.js and Ruby on Rails, offering a structured path from beginner to job-ready developer. The curriculum includes hands-on projects, coding exercises, and real-world applications to reinforce learning.

## Is it worth doing  
The Odin Project is an excellent resource for self-taught developers looking for a structured and comprehensive learning path. It encourages active learning through projects and collaboration with the community. However, since it requires self-discipline and problem-solving skills, those who prefer guided instruction with direct mentorship might find it challenging.

<br>

# Overview :sparkles:

## About
This project is a collection of my solutions for: 
- [Project: Caesar Cipher](https://www.theodinproject.com/lessons/ruby-caesar-cipher)
- [Project: Sub Strings](https://www.theodinproject.com/lessons/ruby-sub-strings)
- [Project: Stock Picker](https://www.theodinproject.com/lessons/ruby-stock-picker)
- [Project: Bubble Sort](https://www.theodinproject.com/lessons/ruby-bubble-sort)
- [Project: Recursion](https://www.theodinproject.com/lessons/ruby-recursion)
- [Project: Linked Lists](https://www.theodinproject.com/lessons/ruby-linked-lists)
- [Project: HashMap](https://www.theodinproject.com/lessons/ruby-hashmap)
- [Project: Binary Search Trees](https://www.theodinproject.com/lessons/ruby-binary-search-trees)

on [Ruby Course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby) from [The Odin Project (TOP)](https://www.theodinproject.com) which is an open-source curriculum for learning full-stack web development.

## Technologies
Languages:
- Ruby

Programs:
- [VSCode](https://code.visualstudio.com)
- [ShareX](https://getsharex.com)
- [GIMP](https://www.gimp.org)

## Features
### Project requirements
- Caesar Cipher:
  - ✅ Implement `caesar_cipher(text, shift)` to return the modified string using a right shift
  - ✅ Maintain original letter casing (uppercase/lowercase)  
  - ✅ Preserve non-alphabetic characters (e.g., punctuation, spaces)  
  - ✅ Wrap from Z to A correctly
- Sub Strings:
  - ✅ Implement `substrings(text, dictionary)` to return a hash with matching substrings and their counts
  - ✅ Each substring is case-insensitive  
  - ✅ Support multiple-word input strings  
  - ✅ Ignore punctuation and match substrings within words  
- Stock Picker:
  - ✅ Implement `stock_picker(stock_prices)` to return the best days to buy and sell for maximum profit
  - ✅ Ensure the buy day comes before the sell day  
  - ✅ Handle edge cases like lowest price on the last day or highest on the first 
- Bubble Sort:
  - ✅ Implement `bubble_sort(array)` to return a sorted array 
  - ✅ Avoid using built-in sort methods; use the bubble sort algorithm
- Recursion:
  - ✅ Implement `fibs(n)` to generate the first `n` Fibonacci numbers using iteration  
  - ✅ Implement `fibs_rec(n)` to generate the first `n` Fibonacci numbers using recursion  
  - ✅ Implement `merge_sort(array)` to recursively sort an array using merge sort (no built-in sort)  
- Linked Lists:
  - ✅ Create a `Node` class with `value` and `next_node` (default to `nil`)  
  - ✅ Create a `LinkedList` class to manage the list of nodes
    - `append(value)` – add node to the end  
    - `prepend(value)` – add node to the start  
    - `size` – return number of nodes  
    - `head` – return first node  
    - `tail` – return last node  
    - `at(index)` – return node at given index  
    - `pop` – remove last node  
    - `contains?(value)` – return `true` if value is in the list  
    - `find(value)` – return index of value or `nil`  
    - `to_s` – return string representation: `( val ) -> ( val ) -> nil`  
  - **Extra credit**  
    - ✅ `insert_at(value, index)` – insert node at given index  
    - ✅ `remove_at(index)` – remove node at given index  
- HashMap:
  - ✅ Create a `HashMap` class with `load_factor` and `capacity`
    - Resize (rehash) when load factor is exceeded
    - `hash(key)` - generate a hash code for string keys  
    - `set(key, value)` – add/update key-value pair and handle collisions    
    - `get(key)` – return value for a key, or `nil` if not found  
    - `has?(key)` – return `true` if key exists  
    - `remove(key)` – delete key and return its value, or `nil`  
    - `length` – return number of stored keys  
    - `clear` – remove all entries  
    - `keys` – return array of keys  
    - `values` – return array of values  
    - `entries` – return array of `[key, value]` pairs 
  - **Extra credit**  
    - ✅ Implement `HashSet` class – same as `HashMap`, but only stores keys (no values)
- Binary Search Trees:
  - ✅ Create a `Node` class with `data`, `left`, and `right` attributes.
  - ✅ Create a `Tree` class that takes an array (with duplicates removed) and builds a balanced BST.
    - `#build_tree(array)` - construct the tree and return the root node.
    - `#insert(value)` – inserts a node with the given value.
    - `#delete(value)` – deletes a node and handles all edge cases.
    - `#find(value)` – returns the node containing the given value.
    - `#level_order(&block)` – breadth-first traversal; returns array if no block given.
    - `#inorder(&block)` – inorder traversal (Left → Root → Right); returns array if no block given.
    - `#preorder(&block)` – preorder traversal (Root → Left → Right); returns array if no block given.
    - `#postorder(&block)` – postorder traversal (Left → Right → Root); returns array if no block given.
    - `#height(value)` – returns the height from the node with the given value.
    - `#depth(value)` – returns the depth of the node from the root.
    - `#balanced?` – returns `true` if the tree is balanced, else `false`.
    - `#rebalance` – rebuilds the tree into a balanced form.
  - **Extra credit**  
      - ✅ Include the `Comparable` module to the `Node` class to compare nodes by `data`.

## Setup
- Download this repository
- Open folder in terminal
- Run desired program:
  - Caesar Cipher - `ruby ./caesar-cipher/caesar_cipher.rb` 
  - Sub Strings - `ruby ./sub-strings/sub_strings.rb` 
  - Stock Picker - `ruby ./stock-picker/stock_picker.rb` 
  - Bubble Sort - `ruby ./bubble-sort/bubble_sort.rb` 
  - Recursion - `ruby ./recursion/main.rb`
  - Linked Lists - `ruby ./linked-lists/main.rb` 
  - HashMap - `ruby ./hash-map/main.rb` 
  - Binary Search Trees - `ruby ./binary-search-trees/main.rb` 

<br>

# Details :scroll:

## User interface

### Caesar Cipher
The program encodes and decodes two hardcoded strings to verify correctness.  
![Caesar Cipher](/_for_readme/UI/caesar_cipher.png)

---

### Substrings
The program uses a hardcoded dictionary and prints the counted substrings found in two hardcoded strings.  
![Substrings](/_for_readme/UI/sub_strings.png)

---

### Stock Picker
The program prints hardcoded stock prices and calculates the best days to buy and sell for maximum profit.  
![Stock Picker](/_for_readme/UI/stock_picker.png)

---

### Bubble Sort
The program displays a hardcoded array and its sorted version using the bubble sort algorithm.  
![Bubble Sort](/_for_readme/UI/bubble_sort.png)

---

### Recursion
The program shows the results of `fibs(n)` and `fibs_rec(n)` for `n` from 0 to 8. It also sorts two hardcoded arrays using merge sort and prints the results.  
![Recursion](/_for_readme/UI/recursion.png)

---

### Linked Lists
The program creates a linked list using hardcoded values and tests all implemented methods to ensure proper functionality.  
![Linked Lists](/_for_readme/UI/linked_list.png)

---

### HashMap
The program uses hardcoded key-value pairs to create a hash map and tests each method to verify correct behavior.  
![HashMap](/_for_readme/UI/hashmap.png)

---

### Binary Search Trees
The program generates a binary search tree from a randomly generated array, tests all tree methods, and verifies balance and rebalancing operations.  
![Binary Search Trees](/_for_readme/UI/binary_search_trees.png)
