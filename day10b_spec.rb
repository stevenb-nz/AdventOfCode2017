require "rspec"
require_relative "day10b"

describe "day10" do
  it "returns 'a2582a3a0e66e6e86e3812dcb672a272' for '' " do
    expect(day10('')).to eq 'a2582a3a0e66e6e86e3812dcb672a272'
  end

  it "returns '33efeb34ea91902bb2f59c9920caa6cd' for 'AoC 2017' " do
    expect(day10('AoC 2017')).to eq '33efeb34ea91902bb2f59c9920caa6cd'
  end

  it "returns '3efbe78a8d82f29979031a4aa0b16a9d' for '1,2,3' " do
    expect(day10('1,2,3')).to eq '3efbe78a8d82f29979031a4aa0b16a9d'
  end

  it "returns '63960835bcdc130f0b66d7ff4f6a5a8e' for '1,2,4' " do
    expect(day10('1,2,4')).to eq '63960835bcdc130f0b66d7ff4f6a5a8e'
  end
end
