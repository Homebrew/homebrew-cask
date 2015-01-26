require 'test_helper'

describe Hbc::CLI::Repository do
  before do
    @expected_output = "#{HOMEBREW_REPOSITORY}/Library/Taps/caskroom/homebrew-testcasks\n"
  end

  it 'displays the location of the .git repository' do
    lambda {
      Hbc::CLI::Repository.run
    }.must_output(@expected_output)
  end

  it 'ignores any arguments' do
    lambda {
      Hbc::CLI::Repository.run('--anoption')
    }.must_output(@expected_output)
  end
end
