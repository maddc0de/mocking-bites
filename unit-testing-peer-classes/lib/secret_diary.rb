class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @diary = diary
    @is_locked = true
  end

  def read
    fail "Go away!" if @is_locked == true
    return @diary.read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
    @is_locked = true
  end

  def unlock
    @is_locked = false
  end
end