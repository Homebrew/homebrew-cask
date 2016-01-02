require 'test_helper'

describe 'brew cask --version' do
  it 'respects the --version argument' do
    lambda {
      Hbc::CLI::NullCommand.new('--version').run
    }.must_output "#{Hbc.full_version}\n"
  end
end
