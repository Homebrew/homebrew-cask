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
      ['open', 'http://www.alfredapp.com/']
    ]
  end

  it 'works for multiple casks' do
    Cask::CLI::Home.run('alfred', 'adium')
    Cask::CLI::Home.system_commands.must_equal [
      ['open', 'http://www.alfredapp.com/'],
      ['open', 'https://www.adium.im/']
    ]
  end

  it "raises an exception when no cask is specified" do
    lambda {
      Cask::CLI::Home.run
    }.must_raise CaskUnspecifiedError
  end
end

