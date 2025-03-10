# frozen_string_literal: true

RSpec.describe 'include matcher' do
  it 'object should include element' do
    expect("Hello world!").to include("world")
    expect([1,2,3]).to include(2)
    expect({a:1,b:2}).to include({:a => 1})
    expect({a:1,b:2}).to include(a: 1)
  end
end
