RSpec.describe 'contain_exactly matcher ' do
  subject{[1,2,3]}

  it 'should chekc for presence fo all elemenst' do
    expect(subject).to contain_exactly(3,2,1)
    expect(subject).to match_array([3,2,1])
    expect(subject).not_to contain_exactly(3,2)

    expect {is_expected.to contain_exactly(3,1,1)}
  end


end
