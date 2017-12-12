require "rspec"
require_relative "day09a"

describe "day09" do
  it "returns 1 for '{}'" do
    expect(day09("{}")).to eq 1
  end

  it "returns 6 for '{{{}}}'" do
    expect(day09("{{{}}}")).to eq 6
  end

  it "returns 5 for '{{},{}}'" do
    expect(day09("{{},{}}")).to eq 5
  end

  it "returns 16 for '{{{},{},{{}}}}'" do
    expect(day09("{{{},{},{{}}}}")).to eq 16
  end

  it "returns 1 for '{<a>,<a>,<a>,<a>}'" do
    expect(day09("{<a>,<a>,<a>,<a>}")).to eq 1
  end

  it "returns 9 for '{{<ab>},{<ab>},{<ab>},{<ab>}}'" do
    expect(day09("{{<ab>},{<ab>},{<ab>},{<ab>}}")).to eq 9
  end

  it "returns 9 for '{{<!!>},{<!!>},{<!!>},{<!!>}}'" do
    expect(day09("{{<!!>},{<!!>},{<!!>},{<!!>}}")).to eq 9
  end

  it "returns 3 for '{{<a!>},{<a!>},{<a!>},{<ab>}}'" do
    expect(day09("{{<a!>},{<a!>},{<a!>},{<ab>}}")).to eq 3
  end
end
