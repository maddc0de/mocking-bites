require 'diary'

RSpec.describe Diary do
  it "initialise contents and read" do
    diary = Diary.new("this is a secret")
    expect(diary.read).to eq "this is a secret"
  end
end