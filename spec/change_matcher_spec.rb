# frozen_string_literal: true

require 'counter'

describe 'change matcher'  do

 describe 'Should chnage the object state' do
  subject{[1,2,3]}

  it 'when new element added' do
    expect{
      sunbject.push(4).to change{subject.length}.from(3).to(4)
    }
  end

  it 'when exisitng element removed' do
    expect {
      subject.pop.to change{subject.length}.from(4).to(3)
    }
  end
 end



end

describe Counter do

  subject {Counter.new}

  it 'should be initialized with 0' do
    expect(subject.counter).to eq(0)
  end

  it 'Shoudl be incremt the value' do
    expect {
      subject.increment.to change {
        subject.counter
      }.from(0).to(1)
    }
  end

  it 'Shoudl be incremt the value by 1 count' do
    expect {
      subject.increment.to change {
        subject.counter
      }.by(1)
    }
  end

  it 'Shoudl be decrement the value' do
    subject.increment
    expect {
      subject.decrement.to change {
        subject.counter
      }.from(1).to(0)
    }
  end

 end
