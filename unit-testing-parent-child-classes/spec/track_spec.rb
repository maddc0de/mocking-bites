require 'track'

RSpec.describe Track do 
  it "matches when given a keyword in the title" do
    track_1 = Track.new("title one", "artist two")
    expect(track_1.matches?("one")).to eq true
  end

  it "matches when given a keyword in the title" do
    track_1 = Track.new("title one", "artist two")
    expect(track_1.matches?("two")).to eq true
  end
end