def day19(input)
  lines = input.split("\n")
  am = lines.max_by(&:length).length
  lines.map! { |line| line.ljust(am+1,' ') }
  lines.push "".ljust(am+1,' ')
  letters = ""
  dir_x, dir_y = 0,1
  pos_y = 0
  pos_x = lines[pos_y].index("|")
  finish = false
  begin
    pos_x += dir_x
    pos_y += dir_y
    ch = lines[pos_y][pos_x]
    if ('a'..'z').include?(ch) or ('A'..'Z').include?(ch) then
      letters += ch
    end
    if lines[pos_y+dir_y][pos_x+dir_x] == ' ' then
      if dir_x == 0 then
        if lines[pos_y][pos_x+1] != ' ' then
          dir_y = 0
          dir_x = 1
        elsif lines[pos_y][pos_x-1] != ' ' then
          dir_y = 0
          dir_x = -1
        else
          finish = true
        end
      else
        if lines[pos_y+1][pos_x] != ' ' then
          dir_x = 0
          dir_y = 1
        elsif lines[pos_y-1][pos_x] != ' ' then
          dir_x = 0
          dir_y = -1
        else
          finish = true
        end
      end
    end
  end until finish
  return letters
end

input = File.read("day19_input.txt").chomp
puts day19(input)
