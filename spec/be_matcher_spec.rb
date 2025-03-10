RSpec.describe 'Be matchers' do
  let(:hash) {{a:1}}
  it 'check foir truthyu' do
    expect(true).to be_truthy
    expect([1,2,3]).to be_truthy
    expect([]).to be_truthy
    expect(hash[:a]).to be_truthy
  end

  it 'checks for falssy' do
    expect(nil).to be_falsy
    expect(false).to be_falsy
    expect(hash[:b]).to be_falsy
  end

  it 'should be nil' do
    expect(nil).to be_nil
    expect(2).not_to be_nil
    expect(hash[:b]).to be_nil
  end


end
