require 'test_helper'

describe Cask::CLI::Install do
  it "allows install of multiple casks at once" do
    stub_cask = stub(:install => nil)
    Cask.expects(:load).with('adium').returns(stub_cask)
    Cask.expects(:load).with('google-chrome').returns(stub_cask)
    Cask::CLI::Install.run('adium', 'google-chrome')
  end

  it "properly handles casks that are not present" do
    stub_cask = stub(:install => nil)
    Cask.expects(:load).with('adium').returns(stub_cask)
    Cask.expects(:load).with('what-the-balls').raises(CaskUnavailableError.new('what-the-balls'))
    Cask.expects(:load).with('google-chrome').returns(stub_cask)
    shutup do
      Cask::CLI::Install.run('adium', 'what-the-balls', 'google-chrome')
    end
  end
end
