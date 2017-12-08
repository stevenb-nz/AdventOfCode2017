def day05(input)
  array = input.split("\n").map(&:to_i)
  next_ref = 0
  steps = 0
  while (0...array.count).include?(next_ref)
    last_ref = next_ref
    next_ref += array[next_ref]
    array[last_ref] += 1
    steps += 1
  end
  return steps
end

input = File.read("day05_input.txt").chomp
puts day05(input)
