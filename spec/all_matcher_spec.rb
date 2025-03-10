RSpec.describe 'All matcher' do
  it 'allows for aggreagte checks' do
    # [5,7,9].each do |val|
    #   expect(val).to be_odd
    # end
    expect([5,7,9]).to all(be_odd)
    expect([2,4,6,9].any? {|val| val.odd?}).to be(true)
    expect([2,4,6,8]).to all(be <10)
  end


  describe [5,7,9] do
    it{is_expected.not_to be_empty}
    it{is_expected.to all(be_odd)}
  end
end