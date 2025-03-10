RSpec.describe 'starts_with matcher' do

  describe 'string' do
    subject{"Nandan"}
    it "shoudl starts with Nan" do
      expect(subject).to start_with("Nan")
    end

    it 'shoudl end with dan' do
      expect(subject).to end_with("dan")
    end

  end

  describe 'array' do
    subject{['a','b','c']}
    it "shoudl starts with a" do
      expect(subject).to start_with("a")
      expect(subject).to start_with("a", "b")
    end

    it 'shoudl end with c' do
      expect(subject).to end_with("c")
      expect(subject).to end_with("b", "c",)
    end
  end

end
