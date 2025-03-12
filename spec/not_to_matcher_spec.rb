RSpec.describe 'the not_to method' do
  it 'checks for invers fo magtcher' do
    expect(5).not_to eq(6)

    expect([1,2,3]).not_to be([1,2,3])
    expect(4).not_to be_odd
    expect('sdasd').not_to be_falsy
    expect(nil).not_to be_truthy
    expect(5).not_to respond_to(:length)
    expect({a:1}).not_to include(:b)
    expect{ 11 / 3}.not_to raise_error
  end

end
