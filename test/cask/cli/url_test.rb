require 'test_helper'

describe Hbc::CLI::Url do

  it 'shows the homepage for the specified Cask' do
    lambda {
      Hbc::CLI::Url.run('local-caffeine')
    }.must_output <<-CLIOUTPUT.undent
      http://example.com/local-caffeine
    CLIOUTPUT
  end

  it 'works for multiple Casks' do
    lambda {
      Hbc::CLI::Url.run('local-caffeine', 'local-transmission')
    }.must_output <<-CLIOUTPUT.undent
      http://example.com/local-caffeine
      http://example.com/local-transmission
    CLIOUTPUT
  end

  it "opens the project page when no Cask is specified" do
    lambda {
      Hbc::CLI::Url.run
    }.must_output <<-CLIOUTPUT.undent
      http://caskroom.io/
    CLIOUTPUT
  end
end
