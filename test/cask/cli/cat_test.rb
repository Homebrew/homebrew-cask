require 'test_helper'

describe Cask::CLI::Cat do
  describe 'given a basic cask' do
    before do
      @expected_output = <<-CLIOUTPUT.undent
        class BasicCask < TestCask
          version '1.2.3'
          sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'

          url 'http://example.com/TestCask.dmg'
          homepage 'http://example.com/'

          app 'TestCask.app'
        end
      CLIOUTPUT
    end

    it 'displays the cask file content about the specified cask' do
      lambda {
        Cask::CLI::Cat.run('basic-cask')
      }.must_output(@expected_output)
    end

    it 'throws away additional casks and uses the first' do
      lambda{
        Cask::CLI::Cat.run('basic-cask', 'local-caffeine')
      }.must_output(@expected_output)
    end

    it 'throws away stray options' do
      lambda{
        Cask::CLI::Cat.run('--notavalidoption', 'basic-cask')
      }.must_output(@expected_output)
    end
  end

  it %q{raises an exception when the cask doesn't exist} do
    lambda {
      Cask::CLI::Cat.run('notacask')
    }.must_raise CaskUnavailableError
  end

  describe "when no cask is specified" do
    it "raises an exception" do
      lambda {
        Cask::CLI::Cat.run()
      }.must_raise CaskUnspecifiedError
    end
  end

  describe "when no cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda {
        Cask::CLI::Cat.run('--notavalidoption')
      }.must_raise CaskUnspecifiedError
    end
  end
end
