RSpec.shared_examples "collection has size" do
  it "returns the number of items" do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject(:sahres) { [1, 2,3] }
  it_behaves_like "collection has size"
end

RSpec.describe String do
  subject{"abc"}
  it_behaves_like "collection has size"
end


RSpec.describe Hash do
  subject{
    {
      a: 1,
      b: 2,
      c: 3
    }
  }
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples "collection has size"
end

