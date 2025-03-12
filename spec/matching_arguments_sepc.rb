RSpec.describe 'matcing argumnets' do
  it'can retur different values depending on argument' do
    array = double([1,2,3,4])
    allow(array).to receive(:first).with(no_args).and_return(1)
    expect(array.first).to eq(1)

    allow(array).to receive(:first).with(1).and_return([1])
    expect(array.first(1)).to eq([1])

    allow(array).to receive(:first).with(2).and_return([1,2])
    expect(array.first(2)).to eq([1,2])

    allow(array).to receive(:first).with(1000).and_return([1,2,3,4])
    expect(array.first(1000)).to eq([1,2,3,4])

    allow(array).to receive(:first).with(be >=4).and_return([1,2,3,4])
    expect(array.first(5)).to eq([1,2,3,4])
  end
end
