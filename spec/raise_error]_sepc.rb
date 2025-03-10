RSpec.describe "raise_eror matcher" do

  def some_method
    x
  end

  it 'should raise error' do
    expect{
      some_method
    }.to raise_error
  end

  it 'should raise a specific error' do
    expect{
      some_method}.to raise_error(NameError)
  end

  it 'shoudl rais eror with message' do
    expect{raise StandardError, 'this is raise_erorr with message'}.to raise_error("this is raise_erorr with message")
  end

  it 'check raise_eror with with_message matcher' do
    expect{raise StandardError, "with_message matcher"}.to raise_error.with_message("with_message matcher")
  end

  it 'should rails  eror matching calss and eror message' do
    expect{raise StandardError, "This is error message"}.to raise_error(StandardError, "This is error message")
  end
  class CustomError < StandardError; end

  it 'checks for user defned custom erors' do
    expect{raise CustomError}.to raise_error
  end

  it 'checks for user defned custom erorr excat defned one' do
    expect{raise CustomError}.to raise_error(CustomError)
  end

end
