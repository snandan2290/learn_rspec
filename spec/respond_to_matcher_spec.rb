class HotChocolate

  def drink
    "Delicious"
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "Awesome, I purchased #{number} of chocolates."
  end
end

describe HotChocolate do

  it 'should respond to instance methods' do
    expect(subject).to respond_to(:drink)
  end

  it 'shhould reposnd with argument' do
    expect(subject).to respond_to(:purchase).with(1).argument
  end
end


RSpec.describe "a specification" do
  subject{[1,2,3]}

  it 'It should respond_to size method' do
    expect(subject).to respond_to(:size, :length)
  end



end
