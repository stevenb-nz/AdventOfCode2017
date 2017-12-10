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
  root_node = (lhs - rhs).to_a[0]
  print node_weight(root_node,array)
  puts
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

def node_weight(node_name,array)
  node_line = []
  array.each do |line|
    if line[0] == node_name then
      node_line = line
    end
  end
  weight = node_line[1]
  if node_line.count > 2 then
    puts node_line[1]
    temp_array = []
    node_line[2].each do |sub_node|
      temp_weight = node_weight(sub_node,array)
      temp_array.push temp_weight
      weight += temp_weight
    end
    print temp_array
  end
  puts weight
  return weight
end

input = File.read("day07_input.txt").chomp
puts day07(input)
