require 'test_helper'
require 'cmd/uninstall'

describe Cask::Actions do
  describe 'linkapps' do
    before do 
      fake_appdir = HOMEBREW_PREFIX/"Applications"
      fake_appdir.mkpath
      Cask.stubs(:appdir).returns(fake_appdir)

      @caffeine = Cask.load('caffeine')
      shutup { Cask::Installer.install(@caffeine) }
      @appdir = HOMEBREW_CELLAR/'caffeine'/@caffeine.version
      @app = @appdir/'Caffeine.app'
    end

    after do
      ARGV.replace ['caffeine']
      shutup { Homebrew.uninstall }
    end

    it "works with an applistion in the root directory" do
      shutup do
        @caffeine.linkapps
      end

      expected_symlink = Cask.appdir/'Caffeine.app'
      expected_symlink.must_be :exist?
      expected_symlink.must_be :symlink?
      expected_symlink.readlink.must_equal @app
    end

    it "works with an application in a subdir" do
      appsubdir = @appdir/'subdir'
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
