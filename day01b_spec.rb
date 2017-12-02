require "rspec"
require_relative "day01b"

describe "day01" do
  it "returns 6 for '1212'" do
    expect(day01("1212")).to eq 6
  end

  it "returns 0 for '1221'" do
    expect(day01("1221")).to eq 0
  end

  it "returns 4 for '123425'" do
    expect(day01("123425")).to eq 4
  end

  it "returns 12 for '123123'" do
    expect(day01("123123")).to eq 12
  end

  it "returns 4 for '12131415'" do
    expect(day01("12131415")).to eq 4
  end
end
