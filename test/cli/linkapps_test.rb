require 'test_helper'

describe Cask::CLI::Linkapps do
  it "only links casks mentioned when arguments are provided" do
    caffeine = Cask.load('local-caffeine')
    transmission = Cask.load('local-transmission')

    shutup do
      Cask::Installer.install caffeine
      Cask::Installer.install transmission

      Cask::CLI::Linkapps.run('local-transmission')
    end

    (Cask.appdir/"Transmission.app").must_be :symlink?
    (Cask.appdir/"Caffeine.app").wont_be :symlink?
  end

  it "links all installed casks when no arguments supplied" do
    caffeine = Cask.load('local-caffeine')
    transmission = Cask.load('local-transmission')

    shutup do
      Cask::Installer.install caffeine
      Cask::Installer.install transmission

      Cask::CLI::Linkapps.run
    end

    (Cask.appdir/"Transmission.app").must_be :symlink?
    (Cask.appdir/"Caffeine.app").must_be :symlink?
  end
end
