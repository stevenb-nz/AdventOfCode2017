require "rspec"
require_relative "day11b"

describe "day11" do
  it "returns 3 for 'ne,ne,ne' " do
    expect(day11('ne,ne,ne')).to eq 3
  end

  it "returns 2 for 'ne,ne,sw,sw' " do
    expect(day11('ne,ne,sw,sw')).to eq 2
  end

  it "returns 2 for 'ne,ne,s,s' " do
    expect(day11('ne,ne,s,s')).to eq 2
  end

  it "returns 3 for 'se,sw,se,sw,sw' " do
    expect(day11('se,sw,se,sw,sw')).to eq 3
  end
end
