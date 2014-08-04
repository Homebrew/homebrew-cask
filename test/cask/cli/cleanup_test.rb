require 'test_helper'

describe Cask::CLI::Cleanup do
  it 'does nothing with --outdated in the clean test environment' do
    Cask.outdated = true
    out, err = capture_io do
      Cask::CLI::Cleanup.run
    end
    out.must_equal <<-OUTPUT.undent
    ==> Removing dead symlinks
    Nothing to do
    ==> Removing cached downloads older than 10 days old
    Nothing to do
    OUTPUT
  end

  # note: this test will fail in isolation.  It depends on other
  # portions of the test suite leaving some files to do cleanup.
  it 'cleans up new files in the test environment' do
    Cask.outdated = false
    out, err = capture_io do
      Cask::CLI::Cleanup.run
    end
    out.must_match(/^==> Removing dead symlinks\nNothing to do\n==> Removing cached downloads\n/)
  end
end
