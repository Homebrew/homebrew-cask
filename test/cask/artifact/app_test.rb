require 'test_helper'

describe Hbc::Artifact::App do
  let(:local_caffeine) {
    Hbc.load('local-caffeine').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }

  describe 'install_phase' do
    it "installs the given apps using the proper target directory" do
      cask = local_caffeine

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
      File.exist?(cask.staged_path.join('Caffeine.app')).must_equal false
    end

    it "works with an application in a subdir" do
      subdir_cask = Hbc::Cask.new('subdir') do
        url TestHelper.local_binary_url('caffeine.zip')
        homepage 'http://example.com/local-caffeine'
        version '1.2.3'
        sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'
        app 'subdir/Caffeine.app'
      end

      begin
        TestHelper.install_without_artifacts(subdir_cask)

        appsubdir = subdir_cask.staged_path.join('subdir').tap(&:mkpath)
        FileUtils.mv(subdir_cask.staged_path.join('Caffeine.app'), appsubdir)

        shutup do
          Hbc::Artifact::App.new(subdir_cask).install_phase
        end

        File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
        File.exist?(appsubdir.join('Caffeine.app')).must_equal false
      ensure
        if defined?(subdir_cask)
          shutup do
            Hbc::Installer.new(subdir_cask).uninstall
          end
        end
      end
    end

    it "only uses apps when they are specified" do
      cask = local_caffeine

      staged_app_path = cask.staged_path.join('Caffeine.app')
      staged_app_copy = staged_app_path.sub('Caffeine.app', 'CaffeineAgain.app')
      FileUtils.cp_r staged_app_path, staged_app_copy

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
      File.exist?(staged_app_path).must_equal false

      File.exist?(Hbc.appdir.join('CaffeineAgain.app')).must_equal false
      File.exist?(cask.staged_path.join('CaffeineAgain.app')).must_equal true
    end

    it "avoids clobbering an existing app" do
      cask = local_caffeine

      existing_app_path = Hbc.appdir.join('Caffeine.app')
      existing_app_path.mkpath

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, "==> It seems there is already an App at '#{existing_app_path}'; not moving.")

      source_path = cask.staged_path.join('Caffeine.app')

      File.identical?(source_path, existing_app_path).must_equal false
    end

    it "gives a warning if the source doesn't exist" do
      cask = local_caffeine
      staged_app_path = cask.staged_path.join('Caffeine.app')
      staged_app_path.rmtree

      installation = -> { Hbc::Artifact::App.new(cask).install_phase }
      message = "It seems the App source is not there: '#{staged_app_path}'"

      error = installation.must_raise(Hbc::CaskError)
      error.message.must_equal message
    end
  end

  describe "uninstall_phase" do
    it "deletes managed apps" do
      cask = local_caffeine

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
        Hbc::Artifact::App.new(cask).uninstall_phase
      end

      app_path = Hbc.appdir.join('Caffeine.app')
      File.exist?(app_path).must_equal false
    end
  end

  describe "summary" do
    it "returns the correct english_description" do
      cask = local_caffeine

      description = Hbc::Artifact::App.new(cask).summary[:english_description]

      description.must_equal 'Apps managed by brew-cask:'
    end

    describe "app is correctly installed" do
      it "returns the path to the app" do
        cask = local_caffeine
        shutup { Hbc::Artifact::App.new(cask).install_phase }

        contents = Hbc::Artifact::App.new(cask).summary[:contents]
        app_path = Hbc.appdir.join('Caffeine.app')

        contents.must_equal ["'#{app_path}'"]
      end
    end

    describe "app is missing" do
      it "returns a warning and the supposed path to the app" do
        cask = local_caffeine

        contents = Hbc::Artifact::App.new(cask).summary[:contents]
        app_path = Hbc.appdir.join('Caffeine.app')

        contents.size.must_equal 1
        contents[0].must_match(/.*Missing App.*: '#{app_path}'/)
      end
    end
  end
end
