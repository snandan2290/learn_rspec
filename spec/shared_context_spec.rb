RSpec.shared_context  'common'   do
  before do
    @foods = []
  end

  before(:context) do
    puts "Before context"
  end

  after(:context) do
    puts "After context"
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe  'first exmaple group'   do
  include_context  'common' 

  it 'hash instance variabel set to empty array' do
    expect(@foods.length).to eq(0)
  end

  it 'has a instance method return some value' do
    expect(some_helper_method).to eq(5)
  end

  it 'we can assing the instance variable to defined let variable' do
    @foods = some_variable
    expect(@foods).to eq(some_variable)
  end
end

RSpec.describe  'second example group'   do
  include_context  'common'

  it 'hash instance method returning a vakue' do
    expect(some_helper_method).to eq(5)
  end
end