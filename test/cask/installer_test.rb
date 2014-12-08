require 'test_helper'

describe Cask::Installer do
  describe "install" do
    it "downloads and installs a nice fresh Cask" do
      caffeine = Cask.load('local-caffeine')

      shutup do
        Cask::Installer.new(caffeine).install
      end

      dest_path = Cask.caskroom/'local-caffeine'/caffeine.version
      dest_path.must_be :directory?
      application = dest_path/'Caffeine.app'
      application.must_be :directory?
    end

    it "works with dmg-based Casks" do
      transmission = Cask.load('local-transmission')

      shutup do
        Cask::Installer.new(transmission).install
      end

      dest_path = Cask.caskroom/'local-transmission'/transmission.version
      dest_path.must_be :directory?
      application = dest_path/'Transmission.app'
      application.must_be :directory?
    end

    it "works with tar-based Casks" do
      tarball = Cask.load('tarball')

      shutup do
        Cask::Installer.new(tarball).install
      end

      dest_path = Cask.caskroom/'tarball'/tarball.version
      dest_path.must_be :directory?
      application = dest_path/'Tarball.app'
      application.must_be :directory?
    end

    it "works with cab-based Casks" do
      skip unless HOMEBREW_PREFIX.join('bin/cabextract').exist?
      cab_container = Cask.load('cab-container')
      empty = stub(:formula => [], :macos => nil, :arch => nil, :x11 => nil)
      cab_container.stubs(:depends_on).returns(empty)

      shutup do
        Cask::Installer.new(cab_container).install
      end

      dest_path = Cask.caskroom/'cab-container'/cab_container.version
      dest_path.must_be :directory?
      application = dest_path/'cabcontainer/Application.app'
      application.must_be :directory?
    end

    it "works with Adobe AIR-based Casks" do
      skip unless Pathname('/Applications/Utilities/Adobe AIR Application Installer.app/Contents/MacOS/Adobe AIR Application Installer').exist?
      air_container = Cask.load('adobe-air-container')
      shutup do
        Cask::Installer.new(air_container).install
      end
      dest_path = Cask.caskroom/'adobe-air-container'/air_container.version
      dest_path.must_be :directory?
      application = dest_path/'GMDesk.app'
      application.must_be :directory?
    end

    it "works with 7z-based Casks" do
      skip unless HOMEBREW_PREFIX.join('bin/unar').exist?
      sevenzip_container = Cask.load('sevenzip-container')
      empty = stub(:formula => [], :macos => nil, :arch => nil, :x11 => nil)
      sevenzip_container.stubs(:depends_on).returns(empty)

      shutup do
        Cask::Installer.new(sevenzip_container).install
      end

      dest_path = Cask.caskroom/'sevenzip-container'/sevenzip_container.version
      dest_path.must_be :directory?
      application = dest_path/'sevenzipcontainer/Application.app'
      application.must_be :directory?
    end

    it "works with xar-based Casks" do
      xar_container = Cask.load('xar-container')

      shutup do
        Cask::Installer.new(xar_container).install
      end

      dest_path = Cask.caskroom/'xar-container'/xar_container.version
      dest_path.must_be :directory?
      application = dest_path/'xarcontainer/Application.app'
      application.must_be :directory?
    end

    it "works with Stuffit-based Casks" do
      skip unless HOMEBREW_PREFIX.join('bin/unar').exist?
      stuffit_container = Cask.load('stuffit-container')
      empty = stub(:formula => [], :macos => nil, :arch => nil, :x11 => nil)
      stuffit_container.stubs(:depends_on).returns(empty)

      shutup do
        Cask::Installer.new(stuffit_container).install
      end

      dest_path = Cask.caskroom/'stuffit-container'/stuffit_container.version
      dest_path.must_be :directory?
      application = dest_path/'sheldonmac/v1.0'
      application.must_be :directory?
    end

    it "works with RAR-based Casks" do
      skip unless HOMEBREW_PREFIX.join('bin/unar').exist?
      rar_container = Cask.load('rar-container')
      empty = stub(:formula => [], :macos => nil, :arch => nil, :x11 => nil)
      rar_container.stubs(:depends_on).returns(empty)

      shutup do
        Cask::Installer.new(rar_container).install
      end

      dest_path = Cask.caskroom/'rar-container'/rar_container.version
      dest_path.must_be :directory?
      application = dest_path/'rarcontainer/Application.app'
      application.must_be :directory?
    end

    it "works with bz2-based Casks" do
      asset = Cask.load('bzipped-asset')

      shutup do
        Cask::Installer.new(asset).install
      end

      dest_path = Cask.caskroom/'bzipped-asset'/asset.version
      dest_path.must_be :directory?
      file = dest_path/"bzipped-asset-#{asset.version}"
      file.must_be :file?
    end

    it "works with pure gz-based Casks" do
      asset = Cask.load('gzipped-asset')

      shutup do
        Cask::Installer.new(asset).install
      end

      dest_path = Cask.caskroom/'gzipped-asset'/asset.version
      dest_path.must_be :directory?
      file = dest_path/"gzipped-asset-#{asset.version}"
      file.must_be :file?
    end

    it "blows up on a bad checksum" do
      bad_checksum = Cask.load('bad-checksum')
      lambda {
        shutup do
          Cask::Installer.new(bad_checksum).install
        end
      }.must_raise(ChecksumMismatchError)
    end

    it "blows up on a missing checksum" do
      missing_checksum = Cask.load('missing-checksum')
      lambda {
        shutup do
          Cask::Installer.new(missing_checksum).install
        end
      }.must_raise(ChecksumMissingError)
    end

    it "installs fine if sha256 :no_check is used" do
      no_checksum = Cask.load('no-checksum')
      shutup do
        Cask::Installer.new(no_checksum).install
      end
      no_checksum.must_be :installed?
    end

    it "prints caveats if they're present" do
      with_caveats = Cask.load('with-caveats')
      TestHelper.must_output(self, lambda {
        Cask::Installer.new(with_caveats).install
      }, /Here are some things you might want to know/)
      with_caveats.must_be :installed?
    end

    it "prints installer :manual instructions when present" do
      with_installer_manual = Cask.load('with-installer-manual')
      TestHelper.must_output(self, lambda {
        Cask::Installer.new(with_installer_manual).install
      }, /To complete the installation of Cask with-installer-manual, you must also\nrun the installer at\n\n  '#{with_installer_manual.staged_path.join(%Q{Caffeine.app})}'/)
      with_installer_manual.must_be :installed?
    end

    it "does not extract __MACOSX directories from zips" do
      with_macosx_dir = Cask.load('with-macosx-dir')
      shutup do
        Cask::Installer.new(with_macosx_dir).install
      end
      with_macosx_dir.staged_path.join('__MACOSX').wont_be :directory?
    end

    # unlike the CLI, the internal interface throws exception on double-install
    it "installer method raises an exception when already-installed Casks are attempted" do
      transmission = Cask.load('local-transmission')
      transmission.installed?.must_equal false
      installer = Cask::Installer.new(transmission)

      shutup { installer.install }
      lambda {
        installer.install
      }.must_raise(CaskAlreadyInstalledError)
    end

    it "allows already-installed Casks to be installed if force is provided" do
      transmission = Cask.load('local-transmission')
      transmission.installed?.must_equal false
      installer = Cask::Installer.new(transmission)

      shutup { installer.install }
      shutup {
        installer.install(true)
      } # wont_raise
    end

    it "works properly with a direct URL to a pkg" do
      naked_pkg = Cask.load('naked-pkg')

      shutup do
        Cask::Installer.new(naked_pkg).install
      end

      dest_path = Cask.caskroom/'naked-pkg'/naked_pkg.version
      pkg = dest_path/'Naked.pkg'
      pkg.must_be :file?
    end

    it "works properly with an overridden container :type" do
      naked_executable = Cask.load('naked-executable')

      shutup do
        Cask::Installer.new(naked_executable).install
      end

      dest_path = Cask.caskroom/'naked-executable'/naked_executable.version
      executable = dest_path/'naked_executable'
      executable.must_be :file?
    end

    it "works fine with a nested container" do
      nested_app = Cask.load('nested-app')

      shutup do
        Cask::Installer.new(nested_app).install
      end

      dest_path = Cask.appdir/'MyNestedApp.app'
      TestHelper.valid_alias?(dest_path).must_equal true
    end

    it "generates and finds a timestamped metadata directory for an installed Cask" do
      caffeine = Cask.load('local-caffeine')

      shutup do
        Cask::Installer.new(caffeine).install
      end

      m_path = caffeine.metadata_path(:now, true)
      caffeine.metadata_path(:now, false).must_equal(m_path)
      caffeine.metadata_path(:latest).must_equal(m_path)
    end

    it "generates and finds a metadata subdirectory for an installed Cask" do
      caffeine = Cask.load('local-caffeine')

      shutup do
        Cask::Installer.new(caffeine).install
      end

      subdir_name = 'Casks'
      m_subdir = caffeine.metadata_subdir(subdir_name, :now, true)
      caffeine.metadata_subdir(subdir_name, :now, false).must_equal(m_subdir)
      caffeine.metadata_subdir(subdir_name, :latest).must_equal(m_subdir)
    end
  end

  describe "uninstall" do
    it "fully uninstalls a Cask" do
      caffeine = Cask.load('local-caffeine')
      installer = Cask::Installer.new(caffeine)

      shutup do
        installer.install
        installer.uninstall
      end

      (Cask.caskroom/'local-caffeine'/caffeine.version/'Caffeine.app').wont_be :directory?
      (Cask.caskroom/'local-caffeine'/caffeine.version).wont_be :directory?
      (Cask.caskroom/'local-caffeine').wont_be :directory?
    end

    it "uninstalls all versions if force is set" do
      caffeine = Cask.load('local-caffeine')
      installer = Cask::Installer.new(caffeine)
      mutated_version = caffeine.version + '.1'

      shutup do
        installer.install
      end

      (Cask.caskroom/'local-caffeine'/caffeine.version).must_be :directory?
      (Cask.caskroom/'local-caffeine'/mutated_version).wont_be  :directory?
      FileUtils.mv(Cask.caskroom/'local-caffeine'/caffeine.version, Cask.caskroom/'local-caffeine'/mutated_version)
      (Cask.caskroom/'local-caffeine'/caffeine.version).wont_be :directory?
      (Cask.caskroom/'local-caffeine'/mutated_version).must_be  :directory?

      shutup do
        installer.uninstall(true)
      end

      (Cask.caskroom/'local-caffeine'/caffeine.version).wont_be :directory?
      (Cask.caskroom/'local-caffeine'/mutated_version).wont_be  :directory?
      (Cask.caskroom/'local-caffeine').wont_be :directory?
    end
  end
end
