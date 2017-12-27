require "rspec"
require_relative "day20a"

describe "day20" do
  it "returns 0 for 'day20a_test1.txt' " do
    input = File.read("day20a_test1.txt").chomp
    expect(day20(input)).to eq 0
  end
end
