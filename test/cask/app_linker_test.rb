require 'test_helper'

describe Cask::AppLinker do
  describe 'linkapps' do
    before do
      @caffeine = Cask.load('local-caffeine')
      shutup { Cask::Installer.new(@caffeine).install }
      @app = @caffeine.destination_path/'Caffeine.app'
    end

    it "works with an application in the root directory" do
      shutup do
        Cask::AppLinker.new(@caffeine).link
      end
      TestHelper.valid_alias?(Cask.appdir/'Caffeine.app').must_equal true
    end

    it "works with an application in a subdir" do
      appsubdir = @caffeine.destination_path/'subdir'
      appsubdir.mkpath
      FileUtils.mv @app, appsubdir
      appinsubdir = appsubdir/'Caffeine.app'

      shutup do
        Cask::AppLinker.new(@caffeine).link
      end

      TestHelper.valid_alias?(Cask.appdir/'Caffeine.app').must_equal true
    end

    it "only uses linkables when they are specified" do
      FileUtils.cp_r @app, @app.sub('Caffeine.app', 'CaffeineAgain.app')

      shutup do
        Cask::AppLinker.new(@caffeine).link
      end

      TestHelper.valid_alias?(Cask.appdir/'Caffeine.app').must_equal true
      TestHelper.valid_alias?(Cask.appdir/'CaffeineAgain.app').must_equal false
    end

    it "avoids clobbering an existing app by linking over it" do
      (Cask.appdir/'Caffeine.app').mkpath

      TestHelper.must_output(self, lambda {
        Cask::AppLinker.new(@caffeine).link
      }, "==> It seems there is already an app at #{Cask.appdir.join('Caffeine.app')}; not linking.")

      (Cask.appdir/'Caffeine.app').wont_be :symlink?
    end

    it "happily clobbers an existing symlink" do
      (Cask.appdir/'Caffeine.app').make_symlink('/tmp')

      TestHelper.must_output(self, lambda {
        Cask::AppLinker.new(@caffeine).link
      }, "==> Linking Caffeine.app to #{Cask.appdir.join('Caffeine.app')}")

      File.readlink(Cask.appdir/'Caffeine.app').wont_equal '/tmp'
    end
  end
end
