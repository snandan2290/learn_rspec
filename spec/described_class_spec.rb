require 'king'

describe Prince do
  subject { described_class.new('Nandan') }
  let(:my_king) { described_class.new('Divya') }

  it 'should return the name of the king' do
    expect(subject.name).to eq('Nandan')
    expect(my_king.name).to eq('Divya')
  end

end
