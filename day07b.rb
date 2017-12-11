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
  return balance(root_node,array,0)
end

def balance(node_name,array,diff)
  node_line = []
  array.each do |line|
    if line[0] == node_name then
      node_line = line
    end
  end
  temp_array = []
  temp_array1 = []
  temp_array2 = []
  node_line[2].each do |sub_node|
    temp_array1.push node_weight(sub_node,array)
    temp_array2.push sub_node
  end
  temp_array = temp_array1.sort
  if temp_array[0] == temp_array[-1] then
    return node_line[1] + diff
  else
    if temp_array[0] != temp_array[1] then
      diff = temp_array[1]-temp_array[0]
      return balance(temp_array2[temp_array1.index(temp_array[0])],array,diff)
    else
      diff = temp_array[-2]-temp_array[-1]
      return balance(temp_array2[temp_array1.index(temp_array[-1])],array,diff)
    end
  end
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
    node_line[2].each do |sub_node|
      weight += node_weight(sub_node,array)
    end
  end
  return weight
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
