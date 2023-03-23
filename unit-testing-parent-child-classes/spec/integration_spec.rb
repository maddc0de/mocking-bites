require_relative '../lib/music_library'
require_relative '../lib/track'

RSpec.describe "integration" do
  xit "returns a list of tracks" do
    library = MusicLibrary.new
    track_1 = Track.new("title one", "artist two")
    track_2 = Track.new("title three", "artist four")
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  xit "searches tracks by title" do
    library = MusicLibrary.new
    track_1 = Track.new("title one", "artist two")
    track_2 = Track.new("title three", "artist four")
    library.add(track_1)
    library.add(track_2)
    expect(library.search(one)).to eq [track_1]
  end
end