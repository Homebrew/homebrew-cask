require 'test_helper'

describe Cask::Artifact::App do
  let(:local_alt_caffeine) {
    Cask.load('with-alt-target').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }

  describe 'install to alternate target' do
    it "links the noted applications to the proper directory" do
      cask = local_alt_caffeine

      shutup do
        Cask::Artifact::App.new(cask).install
      end

      TestHelper.valid_alias?(Cask.appdir/'AnotherName.app').must_equal true
    end

    it "works with an application in a subdir" do
      AltSubDirCask = Class.new(Cask)
      AltSubDirCask.class_eval do
        url TestHelper.local_binary('caffeine.zip')
        homepage 'http://example.com/local-caffeine'
        version '1.2.3'
        sha1 'd2fbdad1619934313026fc831e6c6e3dd97ac030'
        link 'subdir/Caffeine.app', :target => 'AnotherName.app'
      end

      begin
        subdir_cask = AltSubDirCask.new.tap do |cask|
          TestHelper.install_without_artifacts(cask)
        end

        appsubdir = (subdir_cask.destination_path/'subdir').tap(&:mkpath)
        FileUtils.mv((subdir_cask.destination_path/'Caffeine.app'), appsubdir)

        shutup do
          Cask::Artifact::App.new(subdir_cask).install
        end

        TestHelper.valid_alias?(Cask.appdir/'AnotherName.app').must_equal true
      ensure
        if defined?(subdir_cask)
          shutup do
            Cask::Installer.new(subdir_cask).uninstall
          end
        end
      end
    end

    it "only uses linkables when they are specified" do
      cask = local_alt_caffeine

      app_path = cask.destination_path.join('Caffeine.app')
      FileUtils.cp_r app_path, app_path.sub('Caffeine.app', 'CaffeineAgain.app')

      shutup do
        Cask::Artifact::App.new(cask).install
      end

      TestHelper.valid_alias?(Cask.appdir/'AnotherName.app').must_equal true
      TestHelper.valid_alias?(Cask.appdir/'AnotherNameAgain.app').must_equal false
    end

    it "avoids clobbering an existing app by linking over it" do
      cask = local_alt_caffeine

      (Cask.appdir/'AnotherName.app').mkpath

      TestHelper.must_output(self, lambda {
        Cask::Artifact::App.new(cask).install
      }, "==> It seems there is already an App at '#{Cask.appdir.join('AnotherName.app')}'; not linking.")

      (Cask.appdir/'AnotherName.app').wont_be :symlink?
    end

    it "happily clobbers an existing symlink" do
      cask = local_alt_caffeine

      (Cask.appdir/'AnotherName.app').make_symlink('/tmp')

      TestHelper.must_output(self, lambda {
        Cask::Artifact::App.new(cask).install
      }, "==> Symlinking App 'Caffeine.app' to '#{Cask.appdir.join('AnotherName.app')}'")

      File.readlink(Cask.appdir/'AnotherName.app').wont_equal '/tmp'
    end
  end
end
