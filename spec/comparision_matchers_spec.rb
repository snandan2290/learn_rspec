RSpec.describe 'comparision matchers' do
  it 'allow for comparision with build-in ruby operators' do
    expect(10).to be >5
    expect(10).to be < 11
    expect(10).to be >=10
    expect(10).to be <=10
  end

  describe 100 do
    it "is greater than" do
      expect(subject).to be > 90
    end

    it {is_expected.to be >= 100}
    it{is_expected.to be 100}
  end
end