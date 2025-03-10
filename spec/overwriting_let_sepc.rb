class ProgramingLanguage
  attr_accessor :name

  def initialize(name = "Ruby")
    @name = name
  end
end
RSpec.describe ProgramingLanguage do
  let(:language) {ProgramingLanguage.new("Python")} 

  it 'should store name of the programingLanguage' do
    expect(language.name).to eq("Python")
  end

  context 'with no argument' do
    let(:language) { ProgramingLanguage.new }

    it 'Should default to Ruby as the name' do
      expect(language.name).to eq("Ruby")
    end
    
  end

end