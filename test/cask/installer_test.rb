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

    it "works with plain pkg casks" do
      heroku_toolbelt = Cask.load('heroku-toolbelt')

      shutup do
        Cask::Installer.install(heroku_toolbelt)
      end

      dest_path = Cask.caskroom/'heroku-toolbelt'/heroku_toolbelt.version
      dest_path.must_be :directory?
      application = Pathname.new('/usr/bin/heroku')
      application.must_be :symlink?
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

    it "prints caveats if they're present" do
      with_caveats = Cask.load('with-caveats')
      TestHelper.must_output(self, lambda {
        Cask::Installer.install(with_caveats)
      }, /Here are some things you might want to know/)
      with_caveats.must_be :installed?
    end

    it "does not extract __MACOSX directories from zips" do
      with_macosx_dir = Cask.load('with-macosx-dir')
      shutup do
        Cask::Installer.install(with_macosx_dir)
      end
      with_macosx_dir.destination_path.join('__MACOSX').wont_be :directory?
    end

    it "prevents already installed casks from being installed" do
      transmission = Cask.load('local-transmission')
      transmission.installed?.must_equal false

      shutup do
        Cask::Installer.install(transmission)
      end
      lambda {
        shutup do
          Cask::Installer.install(transmission)
        end
      }.must_raise(CaskAlreadyInstalledError)
    end

    it "allows already installed casks to being installed if force is provided" do
      transmission = Cask.load('local-transmission')
      transmission.installed?.must_equal false

      shutup do
        Cask::Installer.install(transmission)
      end
      shutup do
        Cask::Installer.install(transmission, true)
      end # wont_raise
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
