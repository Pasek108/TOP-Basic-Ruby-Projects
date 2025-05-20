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
  - ✅ Accept a string and a shift value as input  
  - ✅ Apply a Caesar cipher with a right shift  
  - ✅ Maintain original letter casing (uppercase/lowercase)  
  - ✅ Preserve non-alphabetic characters (e.g., punctuation, spaces)  
  - ✅ Wrap from Z to A correctly
- Sub Strings:
  - ✅ Accept a string and an array of dictionary words as input  
  - ✅ Return a hash with matching substrings (case-insensitive) and their counts  
  - ✅ Support multiple-word input strings  
  - ✅ Ignore punctuation and match substrings within words  
- Stock Picker:
  - ✅ Accept an array of stock prices (each element represents a day)  
  - ✅ Return the best pair of days to buy and sell for maximum profit  
  - ✅ Ensure the buy day comes before the sell day  
  - ✅ Handle edge cases like lowest price on the last day or highest on the first 
- Bubble Sort:
  - ✅ Accept an array of numbers as input  
  - ✅ Return a sorted array using the bubble sort algorithm (no built-in sort)  
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

### Caesar cipher 
Program encodes and decodes two hardcoded strings to check if it works correctly.
![caesar cipher](/_for_readme/UI/caesar_cipher.png)

---

### Sub Strings 
Program displays hardcoded dictionary and for this dictionary it prints counted substrings of two hardcoded strings. 
![sub strings](/_for_readme/UI/sub_strings.png)

---

### Stock picker
Program prints hardcoded stock prices and the best days to buy and sell with the total profit. 
![stock picker](/_for_readme/UI/stock_picker.png)

---

### Bubble sort
Program shows hardcoded initial array and then its sorted version. 
![bubble sort](/_for_readme/UI/bubble_sort.png)

---

### Recursion
Program prints results of `fibs(n)` and `fibs_rec(n)` for n from 0 to 8. Then the program displays two hardcoded arrays and its sorted versions sorted using merg sort 
![recursion](/_for_readme/UI/recursion.png)

---

### Linked lists 
Program uses hardcoded values to create linked list and prints each test of its methods ensuring the list works properly. 

![linked lists](/_for_readme/UI/linked_lists.png)

---

### HashMap 
Program uses hardcoded values to create hash map and prints each test of its methods ensuring the list works properly.  
![hashmap](/_for_readme/UI/hashmap.png)

---

### Binary Search Trees
Program uses array of random values to create BST and prints each test of its methods ensuring the list works properly.  
![binary search trees](/_for_readme/UI/binary_search_trees.png)
