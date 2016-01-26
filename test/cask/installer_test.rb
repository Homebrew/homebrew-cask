require 'test_helper'

describe Hbc::Installer do
  describe "install" do
    it "downloads and installs a nice fresh Cask" do
      caffeine = Hbc.load('local-caffeine')

      shutup do
        Hbc::Installer.new(caffeine).install
      end

      dest_path = Hbc.caskroom.join('local-caffeine',caffeine.version)
      dest_path.must_be :directory?
      application = dest_path.join('Caffeine.app')
      application.must_be :directory?
    end

    it "works with dmg-based Casks" do
      transmission = Hbc.load('local-transmission')

      shutup do
        Hbc::Installer.new(transmission).install
      end

      dest_path = Hbc.caskroom.join('local-transmission',transmission.version)
      dest_path.must_be :directory?
      application = dest_path.join('Transmission.app')
      application.must_be :directory?
    end

    it "works with tar-based Casks" do
      tarball = Hbc.load('tarball')

      shutup do
        Hbc::Installer.new(tarball).install
      end

      dest_path = Hbc.caskroom.join('tarball',tarball.version)
      dest_path.must_be :directory?
      application = dest_path.join('Tarball.app')
      application.must_be :directory?
    end

    it "works with cab-based Casks" do
      skip unless Hbc.homebrew_prefix.join('bin/cabextract').exist?
      cab_container = Hbc.load('cab-container')
      empty = stub(:formula => [], :cask => [], :macos => nil, :arch => nil, :x11 => nil)
      cab_container.stubs(:depends_on).returns(empty)

      shutup do
        Hbc::Installer.new(cab_container).install
      end

      dest_path = Hbc.caskroom.join('cab-container',cab_container.version)
      dest_path.must_be :directory?
      application = dest_path.join('cabcontainer','Application.app')
      application.must_be :directory?
    end

    it "works with Adobe AIR-based Casks" do
      skip unless Hbc::Container::Air.installer_exist?
      air_container = Hbc.load('adobe-air-container')
      shutup do
        Hbc::Installer.new(air_container).install
      end
      dest_path = Hbc.caskroom.join('adobe-air-container',air_container.version)
      dest_path.must_be :directory?
      application = dest_path.join('GMDesk.app')
      application.must_be :directory?
    end

    it "works with 7z-based Casks" do
      skip unless Hbc.homebrew_prefix.join('bin','unar').exist?
      sevenzip_container = Hbc.load('sevenzip-container')
      empty = stub(:formula => [], :cask => [], :macos => nil, :arch => nil, :x11 => nil)
      sevenzip_container.stubs(:depends_on).returns(empty)

      shutup do
        Hbc::Installer.new(sevenzip_container).install
      end

      dest_path = Hbc.caskroom.join('sevenzip-container',sevenzip_container.version)
      dest_path.must_be :directory?
      application = dest_path.join('sevenzipcontainer','Application.app')
      application.must_be :directory?
    end

    it "works with xar-based Casks" do
      xar_container = Hbc.load('xar-container')

      shutup do
        Hbc::Installer.new(xar_container).install
      end

      dest_path = Hbc.caskroom.join('xar-container',xar_container.version)
      dest_path.must_be :directory?
      application = dest_path.join('xarcontainer','Application.app')
      application.must_be :directory?
    end

    it "works with Stuffit-based Casks" do
      skip unless Hbc.homebrew_prefix.join('bin','unar').exist?
      stuffit_container = Hbc.load('stuffit-container')
      empty = stub(:formula => [], :cask => [], :macos => nil, :arch => nil, :x11 => nil)
      stuffit_container.stubs(:depends_on).returns(empty)

      shutup do
        Hbc::Installer.new(stuffit_container).install
      end

      dest_path = Hbc.caskroom.join('stuffit-container',stuffit_container.version)
      dest_path.must_be :directory?
      application = dest_path.join('sheldonmac','v1.0')
      application.must_be :directory?
    end

    it "works with RAR-based Casks" do
      skip unless Hbc.homebrew_prefix.join('bin','unar').exist?
      rar_container = Hbc.load('rar-container')
      empty = stub(:formula => [], :cask => [], :macos => nil, :arch => nil, :x11 => nil)
      rar_container.stubs(:depends_on).returns(empty)

      shutup do
        Hbc::Installer.new(rar_container).install
      end

      dest_path = Hbc.caskroom.join('rar-container',rar_container.version)
      dest_path.must_be :directory?
      application = dest_path.join('rarcontainer','Application.app')
      application.must_be :directory?
    end

    it "works with bz2-based Casks" do
      asset = Hbc.load('bzipped-asset')

      shutup do
        Hbc::Installer.new(asset).install
      end

      dest_path = Hbc.caskroom.join('bzipped-asset',asset.version)
      dest_path.must_be :directory?
      file = dest_path.join("bzipped-asset-#{asset.version}")
      file.must_be :file?
    end

    it "works with pure gz-based Casks" do
      asset = Hbc.load('gzipped-asset')

      shutup do
        Hbc::Installer.new(asset).install
      end

      dest_path = Hbc.caskroom.join('gzipped-asset',asset.version)
      dest_path.must_be :directory?
      file = dest_path.join("gzipped-asset-#{asset.version}")
      file.must_be :file?
    end

    it "blows up on a bad checksum" do
      bad_checksum = Hbc.load('bad-checksum')
      lambda {
        shutup do
          Hbc::Installer.new(bad_checksum).install
        end
      }.must_raise(Hbc::CaskSha256MismatchError)
    end

    it "blows up on a missing checksum" do
      missing_checksum = Hbc.load('missing-checksum')
      lambda {
        shutup do
          Hbc::Installer.new(missing_checksum).install
        end
      }.must_raise(Hbc::CaskSha256MissingError)
    end

    it "installs fine if sha256 :no_check is used" do
      no_checksum = Hbc.load('no-checksum')
      shutup do
        Hbc::Installer.new(no_checksum).install
      end
      no_checksum.must_be :installed?
    end

    it "prints caveats if they're present" do
      with_caveats = Hbc.load('with-caveats')
      TestHelper.must_output(self, lambda {
        Hbc::Installer.new(with_caveats).install
      }, /Here are some things you might want to know/)
      with_caveats.must_be :installed?
    end

    it "prints installer :manual instructions when present" do
      with_installer_manual = Hbc.load('with-installer-manual')
      TestHelper.must_output(self, lambda {
        Hbc::Installer.new(with_installer_manual).install
      }, /To complete the installation of Cask with-installer-manual, you must also\nrun the installer at\n\n  '#{with_installer_manual.staged_path.join(%Q{Caffeine.app})}'/)
      with_installer_manual.must_be :installed?
    end

    it "does not extract __MACOSX directories from zips" do
      with_macosx_dir = Hbc.load('with-macosx-dir')
      shutup do
        Hbc::Installer.new(with_macosx_dir).install
      end
      with_macosx_dir.staged_path.join('__MACOSX').wont_be :directory?
    end

    it "installer method raises an exception when already-installed Casks which auto-update are attempted" do
      auto_updates = Hbc.load('auto-updates')
      auto_updates.installed?.must_equal false
      installer = Hbc::Installer.new(auto_updates)

      shutup { installer.install }
      lambda {
        installer.install
      }.must_raise(Hbc::CaskAutoUpdatesError)
    end

    it "allows already-installed Casks which auto-update to be installed if force is provided" do
      auto_updates = Hbc.load('auto-updates')
      auto_updates.installed?.must_equal false
      installer = Hbc::Installer.new(auto_updates)

      shutup { installer.install }
      shutup {
        installer.install(true)
      } # wont_raise
    end

    # unlike the CLI, the internal interface throws exception on double-install
    it "installer method raises an exception when already-installed Casks are attempted" do
      transmission = Hbc.load('local-transmission')
      transmission.installed?.must_equal false
      installer = Hbc::Installer.new(transmission)

      shutup { installer.install }
      lambda {
        installer.install
      }.must_raise(Hbc::CaskAlreadyInstalledError)
    end

    it "allows already-installed Casks to be installed if force is provided" do
      transmission = Hbc.load('local-transmission')
      transmission.installed?.must_equal false
      installer = Hbc::Installer.new(transmission)

      shutup { installer.install }
      shutup {
        installer.install(true)
      } # wont_raise
    end

    it "works properly with a direct URL to a pkg" do
      naked_pkg = Hbc.load('naked-pkg')

      shutup do
        Hbc::Installer.new(naked_pkg).install
      end

      dest_path = Hbc.caskroom.join('naked-pkg',naked_pkg.version)
      pkg = dest_path.join('Naked.pkg')
      pkg.must_be :file?
    end

    it "works properly with an overridden container :type" do
      naked_executable = Hbc.load('naked-executable')

      shutup do
        Hbc::Installer.new(naked_executable).install
      end

      dest_path = Hbc.caskroom.join('naked-executable',naked_executable.version)
      executable = dest_path.join('naked_executable')
      executable.must_be :file?
    end

    it "works fine with a nested container" do
      nested_app = Hbc.load('nested-app')

      shutup do
        Hbc::Installer.new(nested_app).install
      end

      dest_path = Hbc.appdir.join('MyNestedApp.app')
      TestHelper.valid_alias?(dest_path).must_equal true
    end

    it "generates and finds a timestamped metadata directory for an installed Cask" do
      caffeine = Hbc.load('local-caffeine')

      shutup do
        Hbc::Installer.new(caffeine).install
      end

      m_path = caffeine.metadata_path(:now, true)
      caffeine.metadata_path(:now, false).must_equal(m_path)
      caffeine.metadata_path(:latest).must_equal(m_path)
    end

    it "generates and finds a metadata subdirectory for an installed Cask" do
      caffeine = Hbc.load('local-caffeine')

      shutup do
        Hbc::Installer.new(caffeine).install
      end

      subdir_name = 'Casks'
      m_subdir = caffeine.metadata_subdir(subdir_name, :now, true)
      caffeine.metadata_subdir(subdir_name, :now, false).must_equal(m_subdir)
      caffeine.metadata_subdir(subdir_name, :latest).must_equal(m_subdir)
    end
  end

  describe "uninstall" do
    it "fully uninstalls a Cask" do
      caffeine = Hbc.load('local-caffeine')
      installer = Hbc::Installer.new(caffeine)

      shutup do
        installer.install
        installer.uninstall
      end

      Hbc.caskroom.join('local-caffeine',caffeine.version,'Caffeine.app').wont_be :directory?
      Hbc.caskroom.join('local-caffeine',caffeine.version).wont_be :directory?
      Hbc.caskroom.join('local-caffeine').wont_be :directory?
    end

    it "uninstalls all versions if force is set" do
      caffeine = Hbc.load('local-caffeine')
      installer = Hbc::Installer.new(caffeine)
      mutated_version = caffeine.version + '.1'

      shutup do
        installer.install
      end

      Hbc.caskroom.join('local-caffeine',caffeine.version).must_be :directory?
      Hbc.caskroom.join('local-caffeine',mutated_version).wont_be  :directory?
      FileUtils.mv(Hbc.caskroom.join('local-caffeine',caffeine.version), Hbc.caskroom.join('local-caffeine',mutated_version))
      Hbc.caskroom.join('local-caffeine',caffeine.version).wont_be :directory?
      Hbc.caskroom.join('local-caffeine',mutated_version).must_be  :directory?

      shutup do
        installer.uninstall(true)
      end

      Hbc.caskroom.join('local-caffeine',caffeine.version).wont_be :directory?
      Hbc.caskroom.join('local-caffeine',mutated_version).wont_be  :directory?
      Hbc.caskroom.join('local-caffeine').wont_be :directory?
    end
  end
end
