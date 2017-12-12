def day08(input)
  reg_list = Hash.new
  array = input.split("\n")
  array.each do |line|
    line_array = line.split("if")
    var = line_array[1].split(' ')[0]
    if !reg_list.has_key?(var) then
      reg_list[var] = 0
    end
    if eval(line_array[1].gsub(var,reg_list[var].to_s)) then
      incdec = line_array[0].split(' ')
      if !reg_list.has_key?(incdec[0]) then
        reg_list[incdec[0]] = 0
      end
      if incdec[1] == 'inc' then
        reg_list[incdec[0]] += incdec[2].to_i
      else
        reg_list[incdec[0]] -= incdec[2].to_i
      end
    end
  end
  return reg_list.values.max
end

input = File.read("day08_input.txt").chomp
puts day08(input)
