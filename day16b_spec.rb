require "rspec"
require_relative "day16b"

describe "day16" do
  it "returns 'abcde' for 's1,x3/4,pe/b' " do
    expect(day16('s1,x3/4,pe/b',5)).to eq 'abcde'
  end
end
