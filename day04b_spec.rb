require "rspec"
require_relative "day04b"

describe "day04" do
  it "returns valid for 'abcde fghij'" do
    expect(day04("abcde fghij")).to eq 1
  end

  it "returns not valid for 'abcde xyz ecdab'" do
    expect(day04("abcde xyz ecdab")).to eq 0
  end

  it "returns valid for 'a ab abc abd abf abj'" do
    expect(day04("a ab abc abd abf abj")).to eq 1
  end

  it "returns valid for 'iiii oiii ooii oooi oooo'" do
    expect(day04("iiii oiii ooii oooi oooo")).to eq 1
  end

  it "returns not valid for 'oiii ioii iioi iiio'" do
    expect(day04("oiii ioii iioi iiio")).to eq 0
  end
end
