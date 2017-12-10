require "rspec"
require_relative "day07a"

describe "day07" do
  it "returns 'tknk' for 'day07_test1.txt'" do
    input = File.read("day07_test1.txt").chomp
    expect(day07(input)).to eq "tknk"
  end
end
