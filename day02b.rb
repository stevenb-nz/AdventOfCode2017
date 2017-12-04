def day02(input)

  array = input.split("\n")
  check = 0
  array.each do |line|
    line_array = line.split(' ')
    check += find_divisors(line_array)
  end
  return check
end

def find_divisors(line_array)
  las = line_array.sort_by {|x| x.to_i}
  las = las.reverse
  even_div = 0
  begin
    minlas = las.pop
    las.each do |item|
      dm = item.to_i.divmod(minlas.to_i)
      even_div = dm[0] if dm[1] == 0
    end
  end until even_div > 0
  return even_div
end

input = File.read("day02_input.txt").chomp
puts day02(input)
