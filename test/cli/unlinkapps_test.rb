require 'test_helper'

describe Cask::CLI::Unlinkapps do
  before do
    shutup do
      # use CLI so both casks start installed and linked
      Cask::CLI::Install.run('local-caffeine', 'local-transmission')
    end
  end

  it "only unlinks casks mentioned when arguments are provided" do
    shutup do
      Cask::CLI::Unlinkapps.run('local-transmission')
    end

    (Cask.appdir/"Transmission.app").wont_be :symlink?
    (Cask.appdir/"Caffeine.app").must_be :symlink?
  end

  it "unlinks all installed casks when no arguments supplied" do
    shutup do
      Cask::CLI::Unlinkapps.run
    end

    (Cask.appdir/"Transmission.app").wont_be :symlink?
    (Cask.appdir/"Caffeine.app").wont_be :symlink?
  end
end
