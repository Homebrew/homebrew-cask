require 'test_helper'

describe Cask::CLI::Cat do
  describe 'given a basic Cask' do
    before do
      @expected_output = <<-CLIOUTPUT.undent
        cask :v1test => 'basic-cask' do
          version '1.2.3'
          sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'

          url 'http://example.com/TestCask.dmg'
          homepage 'http://example.com/'

          app 'TestCask.app'
        end
      CLIOUTPUT
    end

    it 'displays the Cask file content about the specified Cask' do
      lambda {
        Cask::CLI::Cat.run('basic-cask')
      }.must_output(@expected_output)
    end

    it 'throws away additional Cask arguments and uses the first' do
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

  it %q{raises an exception when the Cask doesn't exist} do
    lambda {
      Cask::CLI::Cat.run('notacask')
    }.must_raise CaskUnavailableError
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda {
        Cask::CLI::Cat.run()
      }.must_raise CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda {
        Cask::CLI::Cat.run('--notavalidoption')
      }.must_raise CaskUnspecifiedError
    end
  end
end
