require "rspec"
require_relative "day09b"

describe "day09" do
  it "returns 0 for '<>'" do
    expect(day09("<>")).to eq 0
  end

  it "returns 17 for '<random characters>'" do
    expect(day09("<random characters>")).to eq 17
  end

  it "returns 3 for '<<<<>'" do
    expect(day09("<<<<>")).to eq 3
  end

  it "returns 2 for '<{!>}>'" do
    expect(day09("<{!>}>")).to eq 2
  end

  it "returns 0 for '<!!>'" do
    expect(day09("<!!>")).to eq 0
  end

  it "returns 0 for '<!!!>>'" do
    expect(day09("<!!!>>")).to eq 0
  end

  it "returns 10 for '<{o\"i!a,<{i<a>'" do
    expect(day09("<{o\"i!a,<{i<a>")).to eq 10
  end
end
