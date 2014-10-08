require 'test_helper'

# monkeypatch for testing
class Cask::CLI::Home
  def self.system(*command)
    system_commands << command
  end

  def self.reset!
    @system_commands = []
  end

  def self.system_commands
    @system_commands ||= []
  end
end

describe Cask::CLI::Home do
  before do
    Cask::CLI::Home.reset!
  end

  it 'opens the homepage for the specified Cask' do
    Cask::CLI::Home.run('alfred')
    Cask::CLI::Home.system_commands.must_equal [
      ['/usr/bin/open', '--', 'http://www.alfredapp.com/']
    ]
  end

  it 'works for multiple Casks' do
    Cask::CLI::Home.run('alfred', 'adium')
    Cask::CLI::Home.system_commands.must_equal [
      ['/usr/bin/open', '--', 'http://www.alfredapp.com/'],
      ['/usr/bin/open', '--', 'https://www.adium.im/']
    ]
  end

  it "opens the project page when no Cask is specified" do
    Cask::CLI::Home.run
    Cask::CLI::Home.system_commands.must_equal [
      ['/usr/bin/open', '--', 'http://caskroom.io/'],
    ]
  end
end
