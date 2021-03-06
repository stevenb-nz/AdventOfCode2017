require 'set'

def day06(input)
  array = input.split(" ").map(&:to_i)
  states = Set.new
  while states.add?(array.join("_"))
    reallocate!(array)
  end
  return states.size
end

def reallocate!(array)

  bank_index = array.find_index(array.max)
  max_bank_value = array[bank_index]
  array[bank_index] = 0
  max_bank_value.times do
    bank_index = inc(bank_index,array.count)
    array[bank_index] += 1
  end
end

def inc(index,size)

  index += 1
  if index < size then
    return index
  else
    return 0
  end
end

input = File.read("day06_input.txt").chomp
puts day06(input)
