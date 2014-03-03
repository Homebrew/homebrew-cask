require 'test_helper'

describe Cask::Artifact::App do
  let(:local_two_links_caffeine) {
    Cask.load('with-two-links-correct').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }

  describe 'install multiple links' do
    it "links both noted applications to the proper directory" do
      cask = local_two_links_caffeine

      shutup do
        Cask::Artifact::App.new(cask).install
      end

      TestHelper.valid_alias?(Cask.appdir/'Caffeine.app').must_equal true
      TestHelper.valid_alias?(Cask.appdir/'AnotherName.app').must_equal true
    end

    it "works with an application in a subdir" do
      AltSubDirTwoLinksCask = Class.new(Cask)
      AltSubDirTwoLinksCask.class_eval do
        url TestHelper.local_binary('caffeine.zip')
        homepage 'http://example.com/local-caffeine'
        version '1.2.3'
        sha1 'd2fbdad1619934313026fc831e6c6e3dd97ac030'
        link 'subdir/Caffeine.app'
        link 'subdir/Caffeine.app', :target => 'AnotherName.app'
      end

      begin
        subdir_cask = AltSubDirTwoLinksCask.new.tap do |cask|
          TestHelper.install_without_artifacts(cask)
        end

        appsubdir = (subdir_cask.destination_path/'subdir').tap(&:mkpath)
        FileUtils.mv((subdir_cask.destination_path/'Caffeine.app'), appsubdir)

        shutup do
          Cask::Artifact::App.new(subdir_cask).install
        end

        TestHelper.valid_alias?(Cask.appdir/'Caffeine.app').must_equal true
        TestHelper.valid_alias?(Cask.appdir/'AnotherName.app').must_equal true
      ensure
        if defined?(subdir_cask)
          shutup do
            Cask::Installer.new(subdir_cask).uninstall
          end
        end
      end
    end

    # @@@ todo
    # it "only uses linkables when they are specified" do
    #   cask = local_two_links_caffeine
    #
    #   app_path = cask.destination_path.join('Caffeine.app')
    #   FileUtils.cp_r app_path, app_path.sub('Caffeine.app', 'CaffeineAgain.app')
    #
    #   shutup do
    #     Cask::Artifact::App.new(cask).install
    #   end
    #
    #   TestHelper.valid_alias?(Cask.appdir/'AnotherName.app').must_equal true
    #   TestHelper.valid_alias?(Cask.appdir/'AnotherNameAgain.app').must_equal false
    # end

    it "avoids clobbering an existing app by linking over it (link 1)" do
      cask = local_two_links_caffeine

      (Cask.appdir/'Caffeine.app').mkpath

      TestHelper.must_output(self, lambda {
        Cask::Artifact::App.new(cask).install
      }, <<-MESSAGE.undent.chomp)
         ==> It seems there is already an App at '#{Cask.appdir.join('Caffeine.app')}'; not linking.
         ==> Symlinking App 'Caffeine.app' to '#{Cask.appdir.join('AnotherName.app')}'
         MESSAGE

      (Cask.appdir/'Caffeine.app').wont_be :symlink?
    end

    it "avoids clobbering an existing app by linking over it (link 2)" do
      cask = local_two_links_caffeine

      (Cask.appdir/'AnotherName.app').mkpath

      TestHelper.must_output(self, lambda {
        Cask::Artifact::App.new(cask).install
      }, <<-MESSAGE.undent.chomp)
         ==> Symlinking App 'Caffeine.app' to '#{Cask.appdir.join('Caffeine.app')}'
         ==> It seems there is already an App at '#{Cask.appdir.join('AnotherName.app')}'; not linking.
         MESSAGE

      (Cask.appdir/'AnotherName.app').wont_be :symlink?
    end

    it "happily clobbers an existing symlink (link 1)" do
      cask = local_two_links_caffeine

      (Cask.appdir/'Caffeine.app').make_symlink('/tmp')

      TestHelper.must_output(self, lambda {
        Cask::Artifact::App.new(cask).install
      }, <<-MESSAGE.undent.chomp)
         ==> Symlinking App 'Caffeine.app' to '#{Cask.appdir.join('Caffeine.app')}'
         ==> Symlinking App 'Caffeine.app' to '#{Cask.appdir.join('AnotherName.app')}'
         MESSAGE

      File.readlink(Cask.appdir/'Caffeine.app').wont_equal '/tmp'
    end

    it "happily clobbers an existing symlink (link 2)" do
      cask = local_two_links_caffeine

      (Cask.appdir/'AnotherName.app').make_symlink('/tmp')

      TestHelper.must_output(self, lambda {
        Cask::Artifact::App.new(cask).install
      }, <<-MESSAGE.undent.chomp)
         ==> Symlinking App 'Caffeine.app' to '#{Cask.appdir.join('Caffeine.app')}'
         ==> Symlinking App 'Caffeine.app' to '#{Cask.appdir.join('AnotherName.app')}'
         MESSAGE

      File.readlink(Cask.appdir/'AnotherName.app').wont_equal '/tmp'
    end
  end
end
