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

  it "can uninstall multiple casks at once" do
    caffeine = Cask.load('local-caffeine')
    transmission = Cask.load('local-transmission')

    shutup do
      Cask::Installer.install caffeine
      Cask::Installer.install transmission
    end

    caffeine.must_be :installed?
    transmission.must_be :installed?

    Cask::CLI::Uninstall.run('local-caffeine', 'local-transmission')

    caffeine.wont_be :installed?
    transmission.wont_be :installed?
  end
end
