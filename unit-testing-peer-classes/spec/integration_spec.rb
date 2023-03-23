require 'secret_diary'
require 'diary'

RSpec.describe "integration" do
  context "initially" do
    it "cannot read diary because it is locked" do
      diary = Diary.new("this is a secret")
      secret_diary = SecretDiary.new(diary)
      expect{secret_diary.read}.to raise_error "Go away!"
    end
  end

  it "reads the diary's contents when it is unlocked" do
    diary = Diary.new("this is a secret")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "this is a secret"
  end

  it "cannot read the diary's contents when it is relocked" do
    diary = Diary.new("this is a secret")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect{secret_diary.read}.to raise_error "Go away!"
  end
end