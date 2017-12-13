def day10(input,list_length)
  length_array = input.split(',').map(&:to_i)
  current_pos = 0
  skip_size = 0
  list_array = []
  list_length.times do |val|
    list_array.push val
  end
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
  return list_array[0] * list_array[1]
end

input = File.read("day10_input.txt").chomp
puts day10(input,256)
