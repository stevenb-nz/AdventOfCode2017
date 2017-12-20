require "rspec"
require_relative "day16a"

describe "day16" do
  it "returns 'baedc' for 's1,x3/4,pe/b' " do
    expect(day16('s1,x3/4,pe/b',5)).to eq 'baedc'
  end
end
