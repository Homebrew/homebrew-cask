require 'test_helper'

describe Hbc::Artifact::App do
  let(:local_alt_caffeine) {
    Hbc.load('with-alt-target').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }

  describe 'activate to alternate target' do
    it "activates the given apps using the proper target directory" do
      cask = local_alt_caffeine

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      TestHelper.valid_alias?(Hbc.appdir.join('AnotherName.app')).must_equal true
    end

    it "creates metadata containing the alternate target name" do
      cask = local_alt_caffeine

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      Hbc::SystemCommand.run('/usr/bin/xattr',
                              :args => ['-p',
                                        'com.apple.metadata:kMDItemAlternateNames',
                                        Hbc.appdir.join('AnotherName.app')],
                              :print_stderr => false).stdout.must_match(/AnotherName/)
    end

    it "works with an application in a subdir" do
      AltSubDirCask = Class.new(Hbc)
      AltSubDirCask.class_eval do
        url TestHelper.local_binary_url('caffeine.zip')
        homepage 'http://example.com/local-caffeine'
        version '1.2.3'
        sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
        app 'subdir/Caffeine.app', :target => 'AnotherName.app'
      end

      begin
        subdir_cask = AltSubDirCask.new.tap do |cask|
          TestHelper.install_without_artifacts(cask)
        end

        appsubdir = subdir_cask.staged_path.join('subdir').tap(&:mkpath)
        FileUtils.mv(subdir_cask.staged_path.join('Caffeine.app'), appsubdir)

        shutup do
          Hbc::Artifact::App.new(subdir_cask).install_phase
        end

        TestHelper.valid_alias?(Hbc.appdir.join('AnotherName.app')).must_equal true
      ensure
        if defined?(subdir_cask)
          shutup do
            Hbc::Installer.new(subdir_cask).uninstall
          end
        end
      end
    end

    it "only uses apps when they are specified" do
      cask = local_alt_caffeine

      app_path = cask.staged_path.join('Caffeine.app')
      FileUtils.cp_r app_path, app_path.sub('Caffeine.app', 'CaffeineAgain.app')

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      TestHelper.valid_alias?(Hbc.appdir.join('AnotherName.app')).must_equal true
      TestHelper.valid_alias?(Hbc.appdir.join('AnotherNameAgain.app')).must_equal false
    end

    it "avoids clobbering an existing app by linking over it" do
      cask = local_alt_caffeine

      Hbc.appdir.join('AnotherName.app').mkpath

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, "==> It seems there is already an App at '#{Hbc.appdir.join('AnotherName.app')}'; not linking.")

      Hbc.appdir.join('AnotherName.app').wont_be :symlink?
    end

    it "happily clobbers an existing symlink" do
      cask = local_alt_caffeine

      Hbc.appdir.join('AnotherName.app').make_symlink('/tmp')

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, "==> Symlinking App 'Caffeine.app' to '#{Hbc.appdir.join('AnotherName.app')}'")

      File.readlink(Hbc.appdir.join('AnotherName.app')).wont_equal '/tmp'
    end
  end
end
