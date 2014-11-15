require 'test_helper'

describe Cask::Artifact::App do
  let(:local_caffeine) {
    Cask.load('local-caffeine').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }

  describe 'install_phase' do
    it "activates the given apps using the proper target directory" do
      cask = local_caffeine

      shutup do
        Cask::Artifact::App.new(cask).install_phase
      end

      TestHelper.valid_alias?(Cask.appdir/'Caffeine.app').must_equal true
    end

    it "works with an application in a subdir" do
      SubDirCask = Class.new(Cask)
      SubDirCask.class_eval do
        url TestHelper.local_binary_url('caffeine.zip')
        homepage 'http://example.com/local-caffeine'
        version '1.2.3'
        sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
        app 'subdir/Caffeine.app'
      end

      begin
        subdir_cask = SubDirCask.new.tap do |cask|
          TestHelper.install_without_artifacts(cask)
        end

        appsubdir = (subdir_cask.staged_path/'subdir').tap(&:mkpath)
        FileUtils.mv((subdir_cask.staged_path/'Caffeine.app'), appsubdir)

        shutup do
          Cask::Artifact::App.new(subdir_cask).install_phase
        end

        TestHelper.valid_alias?(Cask.appdir/'Caffeine.app').must_equal true
      ensure
        if defined?(subdir_cask)
          shutup do
            Cask::Installer.new(subdir_cask).uninstall
          end
        end
      end
    end

    it "only uses apps when they are specified" do
      cask = local_caffeine

      app_path = cask.staged_path.join('Caffeine.app')
      FileUtils.cp_r app_path, app_path.sub('Caffeine.app', 'CaffeineAgain.app')

      shutup do
        Cask::Artifact::App.new(cask).install_phase
      end

      TestHelper.valid_alias?(Cask.appdir/'Caffeine.app').must_equal true
      TestHelper.valid_alias?(Cask.appdir/'CaffeineAgain.app').must_equal false
    end

    it "avoids clobbering an existing app by linking over it" do
      cask = local_caffeine

      (Cask.appdir/'Caffeine.app').mkpath

      TestHelper.must_output(self, lambda {
        Cask::Artifact::App.new(cask).install_phase
      }, "==> It seems there is already an App at '#{Cask.appdir.join('Caffeine.app')}'; not linking.")

      (Cask.appdir/'Caffeine.app').wont_be :symlink?
    end

    it "happily clobbers an existing symlink" do
      cask = local_caffeine

      (Cask.appdir/'Caffeine.app').make_symlink('/tmp')

      TestHelper.must_output(self, lambda {
        Cask::Artifact::App.new(cask).install_phase
      }, "==> Symlinking App 'Caffeine.app' to '#{Cask.appdir.join('Caffeine.app')}'")

      File.readlink(Cask.appdir/'Caffeine.app').wont_equal '/tmp'
    end
  end
end
