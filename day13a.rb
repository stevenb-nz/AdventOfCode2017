def day13(input)
  severity = 0
  input_array = input.split("\n")
  input_array.each do |line|
    temp_array = line.scan(/\d+/).map(&:to_i)
    if temp_array[0] % ((temp_array[1] - 1) * 2) == 0 then
      severity += temp_array[0] * temp_array[1]
    end
  end
  return severity
end

input = File.read("day13_input.txt").chomp
puts day13(input)
