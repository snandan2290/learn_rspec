RSpec.describe Array do

  subject(:sally) { [1, 2] }

  it 'Array has 2 elements' do
    expect(sally.size).to eq(2)
    sally.pop
    expect(sally.size).to eq(1)
  end

  it 'The array is what declared' do
    expect(sally).to eq([1, 2])
  end
end