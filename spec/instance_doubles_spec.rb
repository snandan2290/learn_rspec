class Person

  def a(second)
    sleep(3)
    "hello"
  end

end


describe Person do
  # it 'can implement any memtohd' do
  #   expect(subject.a).to eq("hello")
  # end

  describe "instance" do
    it 'can implement methods defined in class' do
      # person = instance_double(Person, a: 'hello', b: 'hey')
      person = instance_double(Person)
      # allow(person).to receive(:a).and_return("hello")
      # expect(person.a).to eq("hello")

      allow(person).to receive(:a).with(3).and_return("hello")
      expect(person.a(3)).to eq("hello")
    end
  end
end
