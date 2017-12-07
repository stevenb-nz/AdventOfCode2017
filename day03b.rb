def day03(input)
  squares = Hash.new(0)
  current_square = [0,0]
  current_direction = [1,0]

  squares[[current_square[0],current_square[1]]] = 1
  current_square = change_square(current_square,current_direction)
  squares[[current_square[0],current_square[1]]] = sum_neighbours(current_square,squares)
  begin
    current_direction = turn_left(current_square,current_direction,squares)
    current_square = change_square(current_square,current_direction)
    squares[[current_square[0],current_square[1]]] = sum_neighbours(current_square,squares)
  end until squares[current_square] > input.to_i
  return squares[current_square]
end

def change_square(square,direction)
  square[0] += direction[0]
  square[1] += direction[1]
  return square
end

def turn_left(square,direction,squares)
  if look_left(square,direction,squares) then
    direction = make_turn(direction)
  end
  return direction
end

def look_left(square,direction,squares)
  temp_direction = [direction[0],direction[1]]
  temp_direction = make_turn(temp_direction)
  temp_square = [square[0],square[1]]
  temp_square = change_square(temp_square,temp_direction)
  return squares[temp_square] > 0 ? false : true
end

def make_turn(direction)
  if direction[0] == 1 then
    direction[0] = 0
    direction[1] = 1
  elsif direction[0] == -1 then
    direction[0] = 0
    direction[1] = -1
  elsif direction[1] == 1 then
    direction[0] = -1
    direction[1] = 0
  elsif direction[1] == -1 then
    direction[0] = 1
    direction[1] = 0
  end
  return direction
end

def sum_neighbours(square,squares)
  x = square[0]
  y = square[1]
  sum = 0
  sum += squares[[x+1,y]]
  sum += squares[[x+1,y+1]]
  sum += squares[[x,y+1]]
  sum += squares[[x-1,y+1]]
  sum += squares[[x-1,y]]
  sum += squares[[x-1,y-1]]
  sum += squares[[x,y-1]]
  sum += squares[[x+1,y-1]]
  return sum
end

input = File.read("day03_input.txt").chomp
puts day03(input)
