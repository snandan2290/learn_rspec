RSpec.describe 'spy' do
  let(:animal) {spy("animal")}

  it 'confirm a message has been received' do
    animal.eat_fodd
    expect(animal).to have_recieved(:eat_food)
    expect(animal).not_to have_received(:kick)
  end

  it 'rests sbetwenn examples' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retails some fucntionality of regular doube;ls' do
    animal.eat_fodd
    animal.eat_fodd
    animal.eat_fodd("grass")
    expect(animal).to have_received(:eat_fodd).exactly(3).times
    expect(animal).to have_received(:eat_fodd).at_least(1).time.with("grass")
  end
end
