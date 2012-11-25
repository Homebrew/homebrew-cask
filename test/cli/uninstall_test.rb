require 'test_helper'

describe Cask::CLI::Uninstall do
  it "shows an error when a bad cask is provided" do
    lambda {
      Cask::CLI::Uninstall.run('notacask')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      Error: No available cask for notacask
    OUTPUT
  end

  it "shows an error when a cask is provided that's not installed" do
    lambda {
      Cask::CLI::Uninstall.run('anvil')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      Error: anvil is not installed
    OUTPUT
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
