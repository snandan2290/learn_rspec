RSpec.describe Hash do 
  subject(:my_hash) do
    {
      a: 1,
      b: 2
    }
  end

  it 'has two key-value pairs' do
    # expect(subject.length).to eq(2)
    expect(my_hash.length).to eq(2)
  end


  describe 'nested example' do
    it 'has two key-value pairs' do
      # expect(subject.length).to eq(2)
      expect(my_hash.length).to eq(2)
    end
  end

end