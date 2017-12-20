def day16(input,total)
  moves = input.split(',')
  order = ""
  total.times { |n| order += (n+97).chr }
  moves.each do |move|
    case move[0]
    when 'p'
      a = move[1..-1].split('/')
      n1 = order.index(a[0])
      n2 = order.index(a[1])
      temp = order[n1]
      order[n1] = order[n2]
      order[n2] = temp
    when 's'
      n = move[1..-1].to_i
      order = order[-n..-1] + order[0...-n]
    when 'x'
      n = move[1..-1].split('/')
      n1 = n[0].to_i
      n2 = n[1].to_i
      temp = order[n1]
      order[n1] = order[n2]
      order[n2] = temp
    end
  end
  return order
end

input = File.read("day16_input.txt").chomp
puts day16(input,16)
