

class Actor
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "hello"
  end

  def fall_off_ladder
    "call my double"
  end

  def light_on_fire
    false
  end

end

class Movie

  attr_accessor :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end

end

RSpec.describe Movie do
  let(:stuntMan) {double("Nandan", ready?: true, act: "hello", fall_off_ladder: "call my double", light_on_fire: false)}

  subject{ described_class.new(stuntMan) }

  describe "#start_shooting" do
    it 'expects an actor to do 3 actions' do

      expect(stuntMan).to receive(:ready?).once
      # expect(stuntMan).to receive(:act).twice
      # expect(stuntMan).to receive(:act).at_most(10).times
      expect(stuntMan).to receive(:act).at_least(2).times
      expect(stuntMan).to receive(:fall_off_ladder).at_least(1).times
      # expect(stuntMan).to receive(:light_on_fire).exactly(1).time
      expect(stuntMan).to receive(:light_on_fire).at_most(1).times
      subject.start_shooting

    end
  end
end
