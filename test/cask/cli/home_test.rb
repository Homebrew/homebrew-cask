require 'test_helper'

module RecordSystemCalls
  def system(*command)
    system_commands << command
  end

  def reset!
    @system_commands = []
  end

  def system_commands
    @system_commands ||= []
  end
end

module Cask::CLI::Home
  extend RecordSystemCalls
end

describe Cask::CLI::Home do
  before do
    Cask::CLI::Home.reset!
  end

  it 'opens the homepage for the specified cask' do
    Cask::CLI::Home.run('alfred')
    Cask::CLI::Home.system_commands.must_equal [
      ['/usr/bin/open', '--', 'http://www.alfredapp.com/']
    ]
  end

  it 'works for multiple casks' do
    Cask::CLI::Home.run('alfred', 'adium')
    Cask::CLI::Home.system_commands.must_equal [
      ['/usr/bin/open', '--', 'http://www.alfredapp.com/'],
      ['/usr/bin/open', '--', 'https://www.adium.im/']
    ]
  end

  it "opens the project page when no cask is specified" do
    Cask::CLI::Home.run
    Cask::CLI::Home.system_commands.must_equal [
      ['/usr/bin/open', '--', 'http://caskroom.io/'],
    ]
  end
end

