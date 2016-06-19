require 'test_helper'

describe Hbc::CLI::Uninstall do
  it "shows an error when a bad Cask is provided" do
    lambda {
      Hbc::CLI::Uninstall.run('notacask')
    }.must_raise Hbc::CaskUnavailableError
  end

  it "shows an error when a Cask is provided that's not installed" do
    lambda {
      Hbc::CLI::Uninstall.run('anvil')
    }.must_raise Hbc::CaskNotInstalledError
  end

  it "tries anyway on a non-present Cask when --force is given" do
    lambda {
      Hbc::CLI::Uninstall.run('anvil', '--force')
    } # wont_raise
  end

  it "can uninstall and unlink multiple Casks at once" do
    caffeine = Hbc.load('local-caffeine')
    transmission = Hbc.load('local-transmission')

    shutup do
      Hbc::Installer.new(caffeine).install
      Hbc::Installer.new(transmission).install
    end

    caffeine.must_be :installed?
    transmission.must_be :installed?

    shutup do
      Hbc::CLI::Uninstall.run('local-caffeine', 'local-transmission')
    end

    caffeine.wont_be :installed?
    File.exist?(Hbc.appdir.join('Transmission.app')).must_equal false
    transmission.wont_be :installed?
    File.exist?(Hbc.appdir.join('Caffeine.app')).must_equal false
  end

  describe "when Casks have been renamed" do
    before do
      @renamed_path = Hbc.caskroom.join('ive-been-renamed','latest','Renamed.app').tap(&:mkpath)
      @renamed_path.join('Info.plist').open('w') { |f| f.puts "Oh plist" }
    end

    after do
      @renamed_path.rmtree if @renamed_path.exist?
    end

    it "can uninstall non-ruby-backed Casks" do
      shutup do
        Hbc::CLI::Uninstall.run('ive-been-renamed')
      end

      @renamed_path.wont_be :exist?
    end
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Uninstall.run()
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda {
        Hbc::CLI::Uninstall.run('--notavalidoption')
      }.must_raise Hbc::CaskUnspecifiedError
    end
  end
end
