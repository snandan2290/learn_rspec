RSpec.describe 'satify matcher' do
  subject{ 'racecar' }

  it 'should be palindrom' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end


end

RSpec.describe 10 do
  it 'shoudl be multiple fo 5' do
    expect(subject).to satisfy{ |val| val % 5 == 0}
  end

  it 'Shjoudl not be multiple of 4' do
    expect(subject).not_to satisfy{|val| val % 4 ==0}
  end

  it 'should be multiple fo 5 as custom error message ' do
    expect(12).to satisfy('Should be multiple of 5') {|val| val % 5 ==0}
  end
end
