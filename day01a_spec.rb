require "rspec"
require_relative "day01a"

describe "day01" do
  it "returns 3 for '1122'" do
    expect(day01("1122")).to eq 3
  end

  it "returns 4 for '1111'" do
    expect(day01("1111")).to eq 4
  end

  it "returns 0 for '1234'" do
    expect(day01("1234")).to eq 0
  end

  it "returns 9 for '91212129'" do
    expect(day01("91212129")).to eq 9
  end
end
