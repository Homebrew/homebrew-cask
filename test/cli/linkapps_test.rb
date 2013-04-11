require 'test_helper'

describe Cask::CLI::Linkapps do
  before do
    shutup do
      caffeine = Cask.load('local-caffeine')
      transmission = Cask.load('local-transmission')

      Cask::Installer.install caffeine
      Cask::Installer.install transmission
    end
  end

  it "only links casks mentioned when arguments are provided" do
    Cask::CLI::Linkapps.run('local-transmission')

    TestHelper.valid_alias?(Cask.appdir/"Transmission.app").must_equal true
    TestHelper.valid_alias?(Cask.appdir/"Caffeine.app").wont_equal true
  end

  it "links all installed casks when no arguments supplied" do
    Cask::CLI::Linkapps.run

    TestHelper.valid_alias?(Cask.appdir/"Transmission.app").must_equal true
    TestHelper.valid_alias?(Cask.appdir/"Caffeine.app").must_equal true
  end
end
