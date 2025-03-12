RSpec.describe 'allow method' do
  it 'shoudl custommize the instance methods retunr value' do
    calc = double
    allow(calc).to receive(:add).and_return(10)
    expect(calc.add).to eq(10)
    expect(calc.add(12)).to eq(10)
    expect(calc.add(12,23,-1)).to eq(10)
  end

  it 'can stub one or more methods on real object' do
    arr = [1,2,3]
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)
    arr.push(4)
    expect(arr).to eq([1,2,3,4])
  end

  it 'can retunre multiple return valuies in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:b,:c,nil)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
  end
end
