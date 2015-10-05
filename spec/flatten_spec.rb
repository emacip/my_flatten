require "#{File.dirname(__FILE__)}/../lib/flatten"
require "#{File.dirname(__FILE__)}/../lib/array"

describe Flatten do
  it "Flatten array with arrays." do
    expect([[1,2,[3]],4].my_flatten).to eq([1,2,3,4])
  end

  it "Flatten a normal array." do
    expect([1,2,3].my_flatten).to eq([1,2,3])
  end

  it "Flatten an empty array." do
    expect([].my_flatten).to eq([])
  end

  it "Flatten array with hashs." do
    expect([1,{foo: 2}].my_flatten).to eq([1,{foo: 2}])
  end

  it "Check that method returns a new array and not override the original." do
    ary = [[1,2,[3]],4]
    ary.my_flatten
    expect(ary).to eq([[1,2,[3]],4])
  end
end