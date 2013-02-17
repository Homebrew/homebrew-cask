require 'test_helper'

describe Cask::CLI::Info do
  it 'displays some nice info about the specified cask' do
    lambda {
      Cask::CLI::Info.run('alfred')
    }.must_output <<-CLIOUTPUT.undent
      alfred: 1.3.2_265
      http://www.alfredapp.com/
      Not installed
      https://github.com/phinze/cask/commits/master/Casks/alfred.rb
    CLIOUTPUT
  end

  it 'works for multiple casks' do
    lambda {
      Cask::CLI::Info.run('alfred', 'firefox')
    }.must_output <<-CLIOUTPUT.undent
      alfred: 1.3.2_265
      http://www.alfredapp.com/
      Not installed
      https://github.com/phinze/cask/commits/master/Casks/alfred.rb
      firefox: 17.0.1
      http://www.mozilla.org/en-US/firefox/
      Not installed
      https://github.com/phinze/cask/commits/master/Casks/firefox.rb
    CLIOUTPUT
  end
end
