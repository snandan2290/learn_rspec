RSpec.shared_examples "Collection with fixed size" do |size|
  it 'return #{size} items' do
    expect(subject.length).to eq(size)
  end
end