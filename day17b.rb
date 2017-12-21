def day17(input)
  step = input.to_i
  buffer = [0]
  pos = 0
  50_000_000.times do |n|
    pos = (pos + step + 1) % buffer.size
    if pos == 0 then
      buffer.insert(pos+1,n+1)
    else
      buffer.push n+1
    end
  end
  return buffer[buffer.index(0)+1]
end

input = File.read("day17_input.txt").chomp
puts day17(input)
