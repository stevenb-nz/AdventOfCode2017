def day14(input)
  squares = 0
  (0..127).each do |n|
    squares += knot_hash(input+'-'+n.to_s).hex.to_s(2).count("1")
  end
  return squares
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
