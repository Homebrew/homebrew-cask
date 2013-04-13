require 'test_helper'

describe Cask::CLI::Install do
  it "allows install and link of multiple casks at once" do
    shutup do
      Cask::CLI::Install.run('local-transmission', 'local-caffeine')
    end

    Cask.load('local-transmission').must_be :installed?
    Cask.appdir.join('Transmission.app').must_be :symlink?
    Cask.load('local-caffeine').must_be :installed?
    Cask.appdir.join('Caffeine.app').must_be :symlink?
  end

  it "properly handles casks that are not present" do
    TestHelper.must_output(self, lambda {
      Cask::CLI::Install.run('what-the-balls')
    }, 'Error: No available cask for what-the-balls')
  end
end
