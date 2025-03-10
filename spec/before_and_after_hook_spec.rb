RSpec.describe 'before and aftre hooks' do 

  before(:context) do 
    puts "before context"
  end

  after(:context) do 
    puts "after context"
  end

  before(:example) do 
    puts "before example"
  end

  after(:example) do 
    puts "after exmaple"
  end
   
  it 'is just a random example' do 
    expect(5*4).to eq(20)
  end

  it 'is another random exmaple' do 
    expect(3-2).to eq(1)
  end
end