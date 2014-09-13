require 'test_helper'

describe Cask::CLI::Cat do
  it 'displays the cask file content about the specified cask' do
    lambda {
      Cask::CLI::Cat.run('basic-cask')
    }.must_output <<-CLIOUTPUT.undent
      class BasicCask < TestCask
        url 'http://example.com/TestCask.dmg'
        homepage 'http://example.com/'
        version '1.2.3'
        sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'
        app 'TestCask.app'
      end
    CLIOUTPUT
  end

  it 'throws away additional arguments and uses the first' do
    lambda{
      Cask::CLI::Cat.run('basic-cask', 'local-caffeine')
    }.must_output <<-CLIOUTPUT.undent
      class BasicCask < TestCask
        url 'http://example.com/TestCask.dmg'
        homepage 'http://example.com/'
        version '1.2.3'
        sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'
        app 'TestCask.app'
      end
    CLIOUTPUT
  end

  it %q{raises an exception when the cask doesn't exist} do
    lambda {
      Cask::CLI::Cat.run('notacask')
    }.must_raise CaskUnavailableError
  end

  it "raises an exception when no cask is specified" do
    lambda {
      Cask::CLI::Cat.run
    }.must_raise CaskUnspecifiedError
  end
end
