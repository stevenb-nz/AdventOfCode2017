require "rspec"
require_relative "day20b"

describe "day20" do
  it "returns 0 for 'day20b_test1.txt' " do
    input = File.read("day20b_test1.txt").chomp
    expect(day20(input)).to eq 1
  end
end
