require 'set'

def day07(input)
  array = input.split("\n")
  array.each_index do |index|
    array[index] = make_node(array[index])
  end
  lhs = Set.new
  rhs = Set.new
  array.each do |sub_array|
    lhs.add(sub_array[0])
    if sub_array.count > 2 then
      sub_array[2].each do |sub|
        rhs.add(sub)
      end
    end
  end
  return (lhs - rhs).to_a[0]
end

def make_node(line)
  line.delete! ","
  line.delete! "("
  line.delete! ")"
  line_array = line.split(' ')
  line_array[1] = line_array[1].to_i
  new_node = [line_array[0],line_array[1]]
  if line_array.count > 2 then
    new_node.push line_array[3..-1].to_a
  end
  return new_node
end

input = File.read("day07_input.txt").chomp
puts day07(input)
