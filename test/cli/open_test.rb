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

module Cask::CLI::Open
  extend RecordSystemCalls
end

describe Cask::CLI::Open do
  before do
    Cask::CLI::Open.reset!
  end

  it 'opens the homepage for the specified cask' do
    Cask::CLI::Open.run('alfred')
    Cask::CLI::Open.system_commands.must_equal [
      ['open', 'http://www.alfredapp.com/']
    ]
  end

  it 'works for multiple casks' do
    Cask::CLI::Open.run('alfred', 'adium')
    Cask::CLI::Open.system_commands.must_equal [
      ['open', 'http://www.alfredapp.com/'],
      ['open', 'http://www.adium.im/']
    ]
  end
end

