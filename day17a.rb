def day17(input)
  step = input.to_i
  buffer = [0]
  pos = 0
  2017.times do |n|
    pos = (pos + step + 1) % buffer.size
    buffer.insert(pos+1,n+1)
  end
  return buffer[buffer.index(2017)+1]
end

input = File.read("day17_input.txt").chomp
puts day17(input)
