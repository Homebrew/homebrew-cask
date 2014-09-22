require 'test_helper'

describe 'brew cask --version' do
  it 'respects the --version argument' do
    lambda {
      Cask::CLI::NullCommand.new('--version').run
    }.must_output "#{HOMEBREW_CASK_VERSION}\n"
  end
end
