require 'set'

def day14(input)
  grid = []
  (0..127).each do |n|
    grid.push knot_hash(input+'-'+n.to_s).hex.to_s(2).rjust(128,'0').split('')
  end
  groups = 0
  grid.each_with_index do |row,x|
    row.each_with_index do |cell,y|
      so_far = Set.new
      explore(x,y,grid,so_far)
      if !so_far.empty? then
        so_far.to_a.each do |cell|
          grid[cell[0]][cell[1]] = "0"
        end
        groups += 1
      end
    end
  end
  return groups
end

def explore(x,y,grid,so_far)
  if grid[x][y] == "1" then
    so_far.add([x,y])
    if x > 0 then
      if !so_far.member?([x-1,y]) then
        explore(x-1,y,grid,so_far)
      end
    end
    if y > 0 then
      if !so_far.member?([x,y-1]) then
        explore(x,y-1,grid,so_far)
      end
    end
    if x < 127 then
      if !so_far.member?([x+1,y]) then
        explore(x+1,y,grid,so_far)
      end
    end
    if y < 127 then
      if !so_far.member?([x,y+1]) then
        explore(x,y+1,grid,so_far)
      end
    end
  end
end

def knot_hash(input)
  length_array = []
  input.each_byte do |c|
    length_array.push c
  end
  length_array += [17, 31, 73, 47, 23]
  sparse_hash = rounds(input,length_array)
  return make_dense(sparse_hash)
end

def make_dense(sparse_array)
  hash_of_input = ''
  16.times do |j|
    n = 0
    16.times do |i|
      n = n ^ sparse_array.shift
    end
    hash_of_input += "%02x" % n
  end
  return hash_of_input
end

def rounds(input,length_array)
  current_pos = 0
  skip_size = 0
  list_array = []
  list_length = 256
  list_length.times do |val|
    list_array.push val
  end
  64.times do
    length_array.each do |len|
      temp_array = []
      len.times do
        temp_array.push list_array[current_pos]
        current_pos += 1
        current_pos %= list_length
      end
      len.times do
        current_pos -= 1
        current_pos %= list_length
        list_array[current_pos] = temp_array.shift
      end
      current_pos = current_pos + len + skip_size
      current_pos %= list_length
      skip_size += 1
    end
  end
  return list_array
end

input = File.read("day14_input.txt").chomp
puts day14(input)
