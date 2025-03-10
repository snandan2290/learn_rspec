RSpec.describe 'not to method' do
  it 'chekc for 2 values does not match' do
    expect(5).to eq(5)
    expect(5).not_to eq(10)
  end
end