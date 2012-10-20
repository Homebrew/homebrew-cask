require 'test_helper'

describe Cask::CLI::Install do
  it "allows install of multiple casks at once" do
    Cask::Installer.stubs(:install)
    Cask.expects(:load).with('adium')
    Cask.expects(:load).with('google-chrome')
    Cask::CLI::Install.run('adium', 'google-chrome')
  end

  it "properly handles casks that are not present" do
    Cask::Installer.stubs(:install)
    Cask.expects(:load).with('adium')
    Cask.expects(:load).with('what-the-balls').raises(CaskUnavailableError.new('what-the-balls'))
    Cask.expects(:load).with('google-chrome')
    lambda {
      Cask::CLI::Install.run('adium', 'what-the-balls', 'google-chrome')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      Error: No available cask for what-the-balls
    OUTPUT
  end
end
