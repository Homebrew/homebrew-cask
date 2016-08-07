module Hbc::Utils
  module_function

  def file_locked?(file)
    unlocked = File.open(file).flock(File::LOCK_EX | File::LOCK_NB)
    # revert lock if file was unlocked before check
    File.open(file).flock(File::LOCK_UN) if unlocked
    !unlocked
  rescue
    true
  end
end
