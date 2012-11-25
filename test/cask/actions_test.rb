require 'test_helper'

describe Cask::Actions do
  describe 'linkapps' do
    before do 
      @caffeine = Cask.load('local-caffeine')
      shutup { Cask::Installer.install(@caffeine) }
      @app = @caffeine.destination_path/'Caffeine.app'
    end

    after do
      Cask::Installer.uninstall(@caffeine)
    end

    it "works with an application in the root directory" do
      shutup do
        @caffeine.linkapps
      end

      expected_symlink = Cask.appdir/'Caffeine.app'
      expected_symlink.must_be :exist?
      expected_symlink.must_be :symlink?
      expected_symlink.readlink.must_equal @app
    end

    it "works with an application in a subdir" do
      appsubdir = @caffeine.destination_path/'subdir'
      appsubdir.mkpath
      FileUtils.mv @app, appsubdir
      appinsubdir = appsubdir/'Caffeine.app'

      shutup do
        @caffeine.linkapps
      end

      expected_symlink = Cask.appdir/'Caffeine.app'
      expected_symlink.must_be :exist?
      expected_symlink.must_be :symlink?
      expected_symlink.readlink.must_equal appinsubdir
    end
  end
end
