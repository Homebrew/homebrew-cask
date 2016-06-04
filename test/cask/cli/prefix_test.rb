require 'test_helper'

describe Hbc::CLI::Prefix do
  describe 'given no args' do
    before do
      @expected_output = "#{HOMEBREW_PREFIX}/opt/brew-cask\n"
    end

    it 'displays the install location for Homebrew-cask' do
      lambda {
        Hbc::CLI::Prefix.run
      }.must_output(@expected_output)
    end
  end

  describe 'given one or more Casks' do
    before do
      @caffeine = Hbc.load('local-caffeine')
      @transmission = Hbc.load('local-transmission')

      shutup do
        Hbc::Installer.new(@caffeine).install
        Hbc::Installer.new(@transmission).install
      end
    end

    after do
      shutup do
        Hbc::CLI::Uninstall.run('local-caffeine', 'local-transmission')
      end
    end

    it 'displays the install location for an installed Cask' do
      lambda {
        Hbc::CLI::Prefix.run('local-caffeine')
      }.must_output("#{@caffeine.staged_path}\n")

      lambda {
        Hbc::CLI::Prefix.run('local-transmission')
      }.must_output("#{@transmission.staged_path}\n")
    end

    it 'displays the install locations for multiple installed Casks' do
      lambda {
        Hbc::CLI::Prefix.run('local-caffeine', 'local-transmission')
      }.must_output("#{@caffeine.staged_path}\n#{@transmission.staged_path}\n")
    end

    it 'shows an error when a bad Cask is provided' do
      lambda {
        Hbc::CLI::Prefix.run('notacask')
      }.must_raise Hbc::CaskUnavailableError
    end

    it "shows an error when a Cask is provided that's not installed" do
      lambda {
        Hbc::CLI::Prefix.run('anvil')
      }.must_raise Hbc::CaskNotInstalledError
    end
  end
end
