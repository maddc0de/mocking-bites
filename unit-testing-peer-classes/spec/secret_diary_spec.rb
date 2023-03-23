require 'secret_diary'


RSpec.describe SecretDiary do
  context "initially" do
    it "cannot read diary because it is locked" do
      diary = double :diary
      secret_diary = SecretDiary.new(diary)
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end

  it "reads the diary's contents when it is unlocked" do
    diary = double(:diary, read: "this is a secret")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "this is a secret"
  end

  it "cannot read the diary's contents when it is relocked" do
    diary = double :diary
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect{secret_diary.read}.to raise_error "Go away!"
  end

end