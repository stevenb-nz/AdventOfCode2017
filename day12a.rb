require 'set'

def day12(input)
  input_array = input.split("\n")
  array = []
  input_array.each do |line|
    array.push line.scan(/\d+/)[1..-1]
  end
  group_count = Set.new
  count(0,array,group_count)
  return group_count.count
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
