class Car

  def initialize(model)
    @model = model
  end
end

class Garage
  attr_accessor :storage

  def initialize()
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model)
  end
end

RSpec.describe Garage do
  let(:car) {instance_double(Car)}

  before do
    allow(Car).to receive(:new).and_return(car)
  end

  it 'adds a car to storage' do
    subject.add_to_collection("ferarrie")
    expect(Car).to have_received(:new).with("ferarrie")
    expect(subject.storage.length).to (be >0)
    expect(subject.storage.first).to eq(car)
  end

end
