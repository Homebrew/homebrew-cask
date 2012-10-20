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

  it "delegates to the installer to properly uninstall" do
    fake_cask = stub('fake-cask')
    Cask.stubs(:load).with('fake-cask').returns(fake_cask)
    Cask::Installer.expects(:uninstall).with(fake_cask)
    Cask::CLI::Uninstall.run('fake-cask')
  end 

  it "can uninstall multiple casks at once" do
    caffeine = Cask.load('caffeine')
    anvil = Cask.load('anvil')

    shutup do
      Cask::Installer.install(caffeine)
      Cask::Installer.install(anvil)
    end

    shutup do
      Cask::CLI::Uninstall.run('caffeine', 'anvil')
    end

    caffeine.wont_be :installed?
    anvil.wont_be :installed?
  end
end
