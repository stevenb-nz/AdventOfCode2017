require "rspec"
require_relative "day03a"

describe "day03" do
  it "returns 0 for '1'" do
    expect(day03("1")).to eq 0
  end

  it "returns 3 for '12'" do
    expect(day03("12")).to eq 3
  end

  it "returns 2 for '23'" do
    expect(day03("23")).to eq 2
  end

  it "returns 31 for '1024'" do
    expect(day03("1024")).to eq 31
  end
end
