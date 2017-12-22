require "rspec"
require_relative "day18a"

describe "day18" do
  it "returns 4 for 'day18a_test1.txt' " do
    input = File.read("day18a_test1.txt").chomp
    expect(day18(input)).to eq 4
  end
end
