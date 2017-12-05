def day03(input)

  input = input.to_i
  steps_out = -1
  begin
    steps_out += 1
  end until (steps_out*2+1)**2 >= input
  around = input - ((steps_out-1)*2+1)**2
  return steps_out + (steps_out == 0 ? 0 : (steps_out - around.divmod((steps_out)*2)[1]).abs)
end

input = File.read("day03_input.txt").chomp
puts day03(input)
