RSpec.describe Hash do

  it 'should start of empty' do
    puts "subject::#{subject}/#{subject.class}"
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some Value"
    puts "subject::#{subject}/#{subject.class}"
    expect(subject.length).to eq(1)
  end

  it 'should tets anotjer hash object' do
    puts "subject::#{subject}/#{subject.class}"
    expect(subject.length).to eq(0)
  end

end