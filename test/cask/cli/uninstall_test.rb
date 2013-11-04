require 'test_helper'

describe Cask::CLI::Uninstall do
  it "shows an error when a bad cask is provided" do
    TestHelper.must_output(self, lambda {
      Cask::CLI::Uninstall.run('notacask')
    }, 'Error: No available cask for notacask')
  end

  it "shows an error when a cask is provided that's not installed" do
    TestHelper.must_output(self, lambda {
      Cask::CLI::Uninstall.run('anvil')
    }, 'Error: anvil is not installed')
  end

  it "can uninstall and unlink multiple casks at once" do
    caffeine = Cask.load('local-caffeine')
    transmission = Cask.load('local-transmission')

    shutup do
      Cask::Installer.new(caffeine).install
      Cask::Installer.new(transmission).install
    end

    caffeine.must_be :installed?
    transmission.must_be :installed?

    shutup do
      Cask::CLI::Uninstall.run('local-caffeine', 'local-transmission')
    end

    caffeine.wont_be :installed?
    Cask.appdir.join('Transmission.app').wont_be :symlink?
    transmission.wont_be :installed?
    Cask.appdir.join('Caffeine.app').wont_be :symlink?
  end
end
