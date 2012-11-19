require 'test_helper'

describe Cask::CLI::Linkapps do
  it "only links casks provided in arguments" do
    mock_cask = mock()
    mock_cask.expects(:linkapps).twice
    Cask.expects(:load).with('adium').returns(mock_cask)

    Cask.expects(:load).with('google-chrome').returns(mock_cask)
    Cask::CLI::Linkapps.run('adium', 'google-chrome')
  end

  it "links all installed casks when no arguments supplied" do
    mock_cask = mock()
    mock_cask.expects(:linkapps).times(3)

    Cask.expects(:installed).returns([mock_cask, mock_cask, mock_cask])

    Cask::CLI::Linkapps.run
  end
end
