require 'test_helper'

describe Cask::CLI::Uninstall do
  it "shows an error when a bad Cask is provided" do
    lambda {
      Cask::CLI::Uninstall.run('notacask')
    }.must_raise CaskUnavailableError
  end

  it "shows an error when a Cask is provided that's not installed" do
    lambda {
      Cask::CLI::Uninstall.run('anvil')
    }.must_raise CaskNotInstalledError
  end

  it "tries anyway on a non-present Cask when --force is given" do
    lambda {
      Cask::CLI::Uninstall.run('anvil', '--force')
    } # wont_raise
  end

  it "can uninstall and unlink multiple Casks at once" do
    caffeine = Cask.load('local-caffeine')
    transmission = Cask.load('local-transmission')

    shutup do
      Cask::Installer.new(caffeine).install
      Cask::Installer.new(transmission).install
    end

    caffeine.must_be :installed?
    transmission.must_be :installed?

    shutup do
      Cask::CLI::Uninstall.run('local-caffeine', 'local-transmission')
    end

    caffeine.wont_be :installed?
    Cask.appdir.join('Transmission.app').wont_be :symlink?
    transmission.wont_be :installed?
    Cask.appdir.join('Caffeine.app').wont_be :symlink?
  end

  describe "when Casks have been renamed" do
    before do
      @renamed_path = Cask.caskroom.join('ive-been-renamed','latest','Renamed.app').tap(&:mkpath)
      @renamed_path.join('Info.plist').open('w') { |f| f.puts "Oh plist" }
    end

    after do
      @renamed_path.rmtree if @renamed_path.exist?
    end

    it "can uninstall non-ruby-backed Casks" do
      shutup do
        Cask::CLI::Uninstall.run('ive-been-renamed')
      end

      @renamed_path.wont_be :exist?
    end
  end

  describe "when no Cask is specified" do
    it "raises an exception" do
      lambda {
        Cask::CLI::Uninstall.run()
      }.must_raise CaskUnspecifiedError
    end
  end

  describe "when no Cask is specified, but an invalid option" do
    it "raises an exception" do
      lambda {
        Cask::CLI::Uninstall.run('--notavalidoption')
      }.must_raise CaskUnspecifiedError
    end
  end
end
