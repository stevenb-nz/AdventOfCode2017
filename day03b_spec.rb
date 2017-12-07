require "rspec"
require_relative "day03b"

describe "day03" do
  it "returns 2 for '1'" do
    expect(day03("1")).to eq 2
  end

  it "returns 4 for '2'" do
    expect(day03("2")).to eq 4
  end

  it "returns 5 for '4'" do
    expect(day03("4")).to eq 5
  end

  it "returns 10 for '5'" do
    expect(day03("5")).to eq 10
  end
end
