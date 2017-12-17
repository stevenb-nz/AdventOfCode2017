def day13(input)
  delay = -1
  input_array = input.split("\n")
  begin
    delay += 1
    caught = false
    input_array.each do |line|
      temp_array = line.scan(/\d+/).map(&:to_i)
      if (temp_array[0] + delay) % ((temp_array[1] - 1) * 2) == 0 then
        caught = true
        break
      end
    end
  end until !caught
  return delay
end

input = File.read("day13_input.txt").chomp
puts day13(input)
