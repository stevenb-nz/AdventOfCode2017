require 'set'

def day12(input)
  input_array = input.split("\n")
  array = []
  input_array.each do |line|
    array.push line.scan(/\d+/)[1..-1]
  end
  group_count = Set.new
  groups_count = 0
  array.each_index do |i|
    if !group_count.include?(i) then
      groups_count += 1
      count(i,array,group_count)
    end
  end
  return groups_count
end

def count(index,array,group_count)
  if group_count.add?(index) then
    array[index].each do |link|
      count(link.to_i,array,group_count)
    end
  end
end

input = File.read("day12_input.txt").chomp
puts day12(input)
