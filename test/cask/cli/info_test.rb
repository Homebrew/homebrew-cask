require 'test_helper'

describe Cask::CLI::Info do
  it 'displays some nice info about the specified cask' do
    lambda {
      Cask::CLI::Info.run('local-caffeine')
    }.must_output <<-CLIOUTPUT.undent
      local-caffeine: 1.2.3
      http://example.com/local-caffeine
      Not installed
      https://github.com/phinze/homebrew-testcasks/commits/master/Casks/local-caffeine.rb
    CLIOUTPUT
  end

  it 'works for multiple casks' do
    lambda {
      Cask::CLI::Info.run('local-caffeine', 'local-transmission')
    }.must_output <<-CLIOUTPUT.undent
      local-caffeine: 1.2.3
      http://example.com/local-caffeine
      Not installed
      https://github.com/phinze/homebrew-testcasks/commits/master/Casks/local-caffeine.rb
      local-transmission: 2.61
      http://example.com/local-transmission
      Not installed
      https://github.com/phinze/homebrew-testcasks/commits/master/Casks/local-transmission.rb
    CLIOUTPUT
  end

  it 'should print caveats if the cask provided one' do
    lambda {
      Cask::CLI::Info.run('with-caveats')
    }.must_output <<-CLIOUTPUT.undent
      with-caveats: 1.2.3
      http://example.com/local-caffeine
      Not installed
      https://github.com/phinze/homebrew-testcasks/commits/master/Casks/with-caveats.rb
      ==> Caveats
      Here are some things you might want to know.
    CLIOUTPUT
  end

  it "raises an exception when no cask is specified" do
    lambda {
      Cask::CLI::Info.run
    }.must_raise CaskUnspecifiedError
  end
end
