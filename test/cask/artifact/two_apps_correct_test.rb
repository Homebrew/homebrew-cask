require 'test_helper'

describe Hbc::Artifact::App do
  let(:local_two_apps_caffeine) {
    Hbc.load('with-two-apps-correct').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }

  describe 'multiple apps' do
    it "activates both apps using the proper target directory" do
      cask = local_two_apps_caffeine

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      TestHelper.valid_alias?(Hbc.appdir.join('Caffeine.app')).must_equal true
      TestHelper.valid_alias?(Hbc.appdir.join('AnotherName.app')).must_equal true
    end

    it "works with an application in a subdir" do
      subdir_cask = Hbc::Cask.new('alt-subdir-two-apps') do
        url TestHelper.local_binary_url('caffeine.zip')
        homepage 'http://example.com/local-caffeine'
        version '1.2.3'
        sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
        app 'subdir/Caffeine.app'
        app 'subdir/Caffeine.app', :target => 'AnotherName.app'
      end

      begin
        TestHelper.install_without_artifacts(subdir_cask)

        appsubdir = subdir_cask.staged_path.join('subdir').tap(&:mkpath)
        FileUtils.mv(subdir_cask.staged_path.join('Caffeine.app'), appsubdir)

        shutup do
          Hbc::Artifact::App.new(subdir_cask).install_phase
        end

        TestHelper.valid_alias?(Hbc.appdir.join('Caffeine.app')).must_equal true
        TestHelper.valid_alias?(Hbc.appdir.join('AnotherName.app')).must_equal true
      ensure
        if defined?(subdir_cask)
          shutup do
            Hbc::Installer.new(subdir_cask).uninstall
          end
        end
      end
    end

    # @@@ todo
    # it "only uses apps when they are specified" do
    #   cask = local_two_apps_caffeine
    #
    #   app_path = cask.staged_path.join('Caffeine.app')
    #   FileUtils.cp_r app_path, app_path.sub('Caffeine.app', 'CaffeineAgain.app')
    #
    #   shutup do
    #     Hbc::Artifact::App.new(cask).install_phase
    #   end
    #
    #   TestHelper.valid_alias?(Hbc.appdir.join('AnotherName.app')).must_equal true
    #   TestHelper.valid_alias?(Hbc.appdir.join('AnotherNameAgain.app').must_equal false
    # end

    it "avoids clobbering an existing app by linking over it (link 1)" do
      cask = local_two_apps_caffeine

      Hbc.appdir.join('Caffeine.app').mkpath

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, <<-MESSAGE.undent.chomp)
         ==> It seems there is already an App at '#{Hbc.appdir.join('Caffeine.app')}'; not linking.
         ==> Symlinking App 'Caffeine.app' to '#{Hbc.appdir.join('AnotherName.app')}'
         MESSAGE

      Hbc.appdir.join('Caffeine.app').wont_be :symlink?
    end

    it "avoids clobbering an existing app by linking over it (link 2)" do
      cask = local_two_apps_caffeine

      Hbc.appdir.join('AnotherName.app').mkpath

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, <<-MESSAGE.undent.chomp)
         ==> Symlinking App 'Caffeine.app' to '#{Hbc.appdir.join('Caffeine.app')}'
         ==> It seems there is already an App at '#{Hbc.appdir.join('AnotherName.app')}'; not linking.
         MESSAGE

      Hbc.appdir.join('AnotherName.app').wont_be :symlink?
    end

    it "happily clobbers an existing symlink (link 1)" do
      cask = local_two_apps_caffeine

      Hbc.appdir.join('Caffeine.app').make_symlink('/tmp')

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, <<-MESSAGE.undent.chomp)
         ==> Symlinking App 'Caffeine.app' to '#{Hbc.appdir.join('Caffeine.app')}'
         ==> Symlinking App 'Caffeine.app' to '#{Hbc.appdir.join('AnotherName.app')}'
         MESSAGE

      File.readlink(Hbc.appdir.join('Caffeine.app')).wont_equal '/tmp'
    end

    it "happily clobbers an existing symlink (link 2)" do
      cask = local_two_apps_caffeine

      Hbc.appdir.join('AnotherName.app').make_symlink('/tmp')

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, <<-MESSAGE.undent.chomp)
         ==> Symlinking App 'Caffeine.app' to '#{Hbc.appdir.join('Caffeine.app')}'
         ==> Symlinking App 'Caffeine.app' to '#{Hbc.appdir.join('AnotherName.app')}'
         MESSAGE

      File.readlink(Hbc.appdir.join('AnotherName.app')).wont_equal '/tmp'
    end
  end
end
