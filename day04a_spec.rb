require "rspec"
require_relative "day04a"

describe "day04" do
  it "returns valid for 'aa bb cc dd ee'" do
    expect(day04("aa bb cc dd ee")).to eq 1
  end

  it "returns not valid for 'aa bb cc dd aa'" do
    expect(day04("aa bb cc dd aa")).to eq 0
  end

  it "returns valid for 'aa bb cc dd aaa'" do
    expect(day04("aa bb cc dd aaa")).to eq 1
  end
end
