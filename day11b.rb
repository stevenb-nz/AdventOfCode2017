def day11(input)
  origin = [0,0,0]
  location = origin
  moves = input.split(',')
  max = 0
  moves.each do |move|
    move(location,move)
    if (location[0].abs+location[1].abs+location[2].abs)/2 > max then
      max =(location[0].abs+location[1].abs+location[2].abs)/2
    end
  end
  return max
end

def move(location,move)
  case move
  when 'n'
    location[0] -= 1
    location[2] += 1
  when 'ne'
    location[1] -= 1
    location[2] += 1
  when 'se'
    location[0] += 1
    location[1] -= 1
  when 's'
    location[0] += 1
    location[2] -= 1
  when 'sw'
    location[1] += 1
    location[2] -= 1
  when 'nw'
    location[0] -= 1
    location[1] += 1
  end
end

input = File.read("day11_input.txt").chomp
puts day11(input)
