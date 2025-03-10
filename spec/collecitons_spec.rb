require 'shared_collection_sepc'

RSpec.describe Array do 
  subject { [1, 2, 3] }
  it_behaves_like "Collection with fixed size", 3
end

RSpec.describe String do
  subject{ "Nandan" }
  include_examples "Collection with fixed size", 6
end

RSpec.describe Hash do
  subject {{
    a:1
  }}
  it_behaves_like "Collection with fixed size", 1
end