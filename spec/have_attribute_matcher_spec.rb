# frozen_string_literal: true

class Wrestler

  attr_accessor :name, :move

  def initialize(name, move)
    @name = name
    @move = move
  end
end

describe 'have_attribute metcher' do
  describe Wrestler.new('Stone Cold Steve Austin', 'Stunner') do
    it  'should check for attribute and proper value' do
      expect(subject).to have_attributes({:name => 'Stone Cold Steve Austin'})
    end

    it 'should check for all attribute and proper values respectively' do
      expect(subject).to have_attributes({:name => 'Stone Cold Steve Austin', :move => 'Stunner'})
    end

    it {is_expected.to have_attributes({:name => 'Stone Cold Steve Austin', :move => 'Stunner'})}
  end
end
