RSpec.describe 'compound expectations' do
  let(:string) {"foo and barr"}

  it 'should contain both' do
    expect(string).to start_with("foo").and end_with("barr")
    expect(string).to start_with("foo") && end_with("barr")
  end

end

describe 25 do

  it "shoudl be odd and greater than 10" do
    expect(subject).to be_odd.and (be > 10)
  end

  it { is_expected.to be_odd.and (be >10)}
end

describe "caterpillar" do

  it 'shoudl sytart wiht "cat" and end with "pillar"' do
    expect(subject).to start_with("cat").and end_with("pillar")
  end


  let(:color) {%w[ green yellow red].shuffle.first}

  it 'color should contain any one color' do
    expect(color).to eq("yellow").or eq("red").or eq("green")
  end


end

describe "firetruck" do
  it 'shoudl contain "fir" and "truck" string' do
    expect(subject).to start_with("fire").and end_with("truck")
  end

  it 'is even and respond_to :times' do
    expect(20).to be_even.and respond_to(:times)
  end

  it 'should include 42 and start with 4,8,15' do
    expect([4, 8, 15, 16, 23, 42]).to include(42).and start_with(4,8,15)
  end
end
