require 'test_helper'

# monkeypatch for testing
class Hbc::CLI::Home
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

describe Hbc::CLI::Home do
  before do
    Hbc::CLI::Home.reset!
  end

  it 'opens the homepage for the specified Cask' do
    Hbc::CLI::Home.run('alfred')
    Hbc::CLI::Home.system_commands.must_equal [
      ['/usr/bin/open', '--', 'https://www.alfredapp.com/']
    ]
  end

  it 'works for multiple Casks' do
    Hbc::CLI::Home.run('alfred', 'adium')
    Hbc::CLI::Home.system_commands.must_equal [
      ['/usr/bin/open', '--', 'https://www.alfredapp.com/'],
      ['/usr/bin/open', '--', 'https://www.adium.im/']
    ]
  end

  it "opens the project page when no Cask is specified" do
    Hbc::CLI::Home.run
    Hbc::CLI::Home.system_commands.must_equal [
      ['/usr/bin/open', '--', 'http://caskroom.io/'],
    ]
  end
end
