RSpec.describe 'Nested hooks' do
  before(:context) do
    puts "Global Before context"
  end

  before(:example) do
    puts "Global Before example"
  end

  it 'does some basic math' do
    expect(1 + 1).to eq(2)  
  end

  it 'does subtraction as well' do
    expect(5 - 3).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts "Inner Before context"
    end

    before(:example) do
      puts "Inner Before example"
    end

    it 'does multiplication as well' do
      expect(2 * 3).to eq(6)
    end

    it 'does division as well' do
      expect(10 / 2).to eq(5)
    end
  end
end