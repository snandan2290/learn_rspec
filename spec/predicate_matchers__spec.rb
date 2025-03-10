# frozen_string_literal: true

RSpec.describe 'predicate mactehrs' do
   it 'can be tested with ruby methods' do
    res = 16/2
    expect(res.even?).to eq(true)
   end

   it 'can be tested with predicate matchers'  do
    res = 16/2
    expect(res).to be_even
    arra = []
    expect(arra).to be_empty
    arra = [1]
    expect(arra).not_to be_empty
    expect(arra).to be_instance_of(Array)
    hash = {a:1}
    expect(hash).to include(:a)
    expect(hash).to have_key(:a)
   end
end
