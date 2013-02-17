require 'test_helper'

describe Cask::Installer do
  describe "install" do
    it "downloads and installs a nice fresh Cask" do
      caffeine = Cask.load('local-caffeine')

      shutup do
        Cask::Installer.install(caffeine)
      end

      dest_path = Cask.caskroom/'local-caffeine'/caffeine.version
      dest_path.must_be :directory?
      application = dest_path/'Caffeine.app'
      application.must_be :directory?
    end

    it "works with dmg-based casks" do
      transmission = Cask.load('local-transmission')

      shutup do
        Cask::Installer.install(transmission)
      end

      dest_path = Cask.caskroom/'local-transmission'/transmission.version
      dest_path.must_be :directory?
      application = dest_path/'Transmission.app'
      application.must_be :directory?
    end

    it "blows up on a bad checksum" do
      bad_checksum = Cask.load('bad-checksum')
      lambda {
        shutup do
          Cask::Installer.install(bad_checksum)
        end
      }.must_raise(ChecksumMismatchError)
    end

    it "blows up on a missing checksum" do
      missing_checksum = Cask.load('missing-checksum')
      lambda {
        shutup do
          Cask::Installer.install(missing_checksum)
        end
      }.must_raise(ChecksumMissingError)
    end

    it "installs fine if no_checksum is included in cask" do
      no_checksum = Cask.load('no-checksum')
      shutup do
        Cask::Installer.install(no_checksum)
      end
      no_checksum.must_be :installed?
    end
  end

  describe "uninstall" do
    it "fully uninstalls a cask" do
      caffeine = Cask.load('local-caffeine')

      shutup do
        Cask::Installer.install(caffeine)
        Cask::Installer.uninstall(caffeine)
      end

      dest_path = HOMEBREW_CELLAR/'local-caffeine'/caffeine.version
      application = dest_path/'Caffeine.app'

      application.wont_be :directory?
      dest_path.wont_be :directory?
    end
  end
end
