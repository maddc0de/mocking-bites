require_relative '../lib/music_library'

RSpec.describe MusicLibrary do
  describe "#add(track) and #all" do
    it "adds and list all tracks" do
      library = MusicLibrary.new
      track_1 = double :track
      track_2 = double :track
      library.add(track_1)
      library.add(track_2)
      expect(library.all).to eq [track_1, track_2]
    end
  end

  describe "#search(keyword)" do
    it "returns a list of tracks that matches the keyword string" do
      library = MusicLibrary.new
      track_1 = double :track
      expect(track_1).to receive(:matches?).with("two").and_return(true)
      track_2 = double :track
      expect(track_2).to receive(:matches?).with("two").and_return(false)
      track_3 = double :track
      expect(track_3).to receive(:matches?).with("two").and_return(true)
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search("two")).to eq [track_1, track_3]
    end
  end

end