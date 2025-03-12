RSpec.describe 'a random dounle' do

  it 'allows deifned method to be invoked' do
    stuntMan = double("Danger")
    allow(stuntMan).to receive(:fall_off_ladder).and_return("ouch")
    expect(stuntMan.fall_off_ladder).to eq("ouch")
  end

  it 'data base double' do
    db = double("Database Connection", disconnect: "Goodbye")
    expect(db.disconnect).to eq("Goodbye")

  end

  it 'file system' do
    fs = double("File System")
    allow(fs).to receive(:read).and_return("Romeo")
    allow(fs).to receive(:write).and_return(false)
    expect(fs.read).to eq("Romeo")
    expect(fs.write).to be_falsy
  end

end
