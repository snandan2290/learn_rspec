RSpec.describe 'Equality Matchers' do 
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'check for value not for type' do
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'should check for type and value' do
      expect(a).not_to eql(b)    
      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end
  end

  describe 'equal matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }
    it 'should check for same object identity' do
      expect(c).not_to equal(d)
      expect(c).to eq(d)
      
      expect(e).to equal(c)
      expect(e).to be(c)
    end
  end

end