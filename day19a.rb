def day19(input)
  lines = input.split("\n")
  am = lines.max_by(&:length).length
  lines.map! { |line| line.ljust(am+1,' ') }
  lines.push "".ljust(am+1,' ')
  return lines
end

# input = File.read("day19_input.txt").chomp
# puts day19(input)
