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

      File.ftype(Hbc.appdir.join('AnotherName.app')).must_equal 'directory'
      File.exist?(cask.staged_path.join('AnotherName.app')).must_equal false
    end

    it "works with an application in a subdir" do
      subdir_cask = Hbc::Cask.new('subdir') do
        url TestHelper.local_binary_url('caffeine.zip')
        homepage 'http://example.com/local-caffeine'
        version '1.2.3'
        sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
        app 'subdir/Caffeine.app', :target => 'AnotherName.app'
      end

      begin
        TestHelper.install_without_artifacts(subdir_cask)

        appsubdir = subdir_cask.staged_path.join('subdir').tap(&:mkpath)
        FileUtils.mv(subdir_cask.staged_path.join('Caffeine.app'), appsubdir)

        shutup do
          Hbc::Artifact::App.new(subdir_cask).install_phase
        end

        File.ftype(Hbc.appdir.join('AnotherName.app')).must_equal 'directory'
        File.exist?(appsubdir.join('AnotherName.app')).must_equal false
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

      staged_app_path = cask.staged_path.join('Caffeine.app')
      staged_app_copy = staged_app_path.sub('Caffeine.app', 'CaffeineAgain.app')
      FileUtils.cp_r staged_app_path, staged_app_copy

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      File.ftype(Hbc.appdir.join('AnotherName.app')).must_equal 'directory'
      File.exist?(staged_app_path).must_equal false

      File.exist?(Hbc.appdir.join('AnotherNameAgain.app')).must_equal false
      File.exist?(cask.staged_path.join('CaffeineAgain.app')).must_equal true
    end

    it "avoids clobbering an existing app by moving over it" do
      cask = local_alt_caffeine

      existing_app_path = Hbc.appdir.join('AnotherName.app')
      existing_app_path.mkpath

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, "==> It seems there is already an App at '#{existing_app_path}'; not moving.")

      source_path = cask.staged_path.join('Caffeine.app')

      File.identical?(source_path, existing_app_path).must_equal false
    end
  end
end
