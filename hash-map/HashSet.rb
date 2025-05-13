# frozen_string_literal: true

require_relative 'LinkedList'

class HashSet
  attr_reader :length, :capacity

  def initialize
    @length = 0
    @capacity = 16
    @load_factor = 0.75
    @arr = Array.new(@capacity) { LinkedList.new }
  end

  # takes key and saves it to hash map. If a key already exists, do nothing
  def set(key)
    bucket_id = hash(key) % @capacity

    node_index = @arr[bucket_id].find { |node| node == key }
    return unless node_index.nil?

    @arr[bucket_id].append key
    @length += 1

    grow if @length > @capacity * @load_factor
  end

  # takes key and returns true or false based on whether or not the key is in the hash map
  def has?(key)
    bucket_id = hash(key) % @capacity
    @arr[bucket_id].contains? { |node| node == key }
  end

  # takes key. If key is present, it removes that entry and returns it. If key isn’t present, returns nil
  def remove(key)
    bucket_id = hash(key) % @capacity

    node_index = @arr[bucket_id].find { |node| node == key }

    return nil if node_index.nil?

    @length -= 1
    @arr[bucket_id].remove_at(node_index)
  end

  # removes all entries in the hash map
  def clear
    initialize
  end

  # returns an array containing all entries
  def entries
    entries = []

    @arr.each do |bucket|
      index = 0

      until bucket.at(index).nil?
        entries << bucket.at(index).value
        index += 1
      end
    end

    entries
  end

  private

  # takes a key and produces a hash code with it
  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code
  end

  # grows hash map by doubling the size and creating new buckets, then copy all nodes over to the new buckets
  def grow
    @capacity *= 2

    new_arr = Array.new(@capacity) { LinkedList.new }

    @arr.each do |bucket|
      index = 0

      until bucket.at(index).nil?
        key = bucket.at(index).value
        new_bucket_id = hash(key) % @capacity
        new_arr[new_bucket_id].append key

        index += 1
      end
    end

    @arr = new_arr
  end
end
