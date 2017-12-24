require "rspec"
require_relative "day18b"

describe "day18" do
  it "returns 3 for 'day18b_test1.txt' " do
    input = File.read("day18b_test1.txt").chomp
    expect(day18(input)).to eq 3
  end
end
