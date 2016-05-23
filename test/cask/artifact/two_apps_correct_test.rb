require 'test_helper'

describe Hbc::Artifact::App do
  let(:local_two_apps_caffeine) {
    Hbc.load('with-two-apps-correct').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }

  let(:local_two_apps_subdir) {
    Hbc.load('with-two-apps-subdir').tap do |cask|
      TestHelper.install_without_artifacts(cask)
    end
  }

  describe 'multiple apps' do
    it "installs both apps using the proper target directory" do
      cask = local_two_apps_caffeine

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
      File.exist?(cask.staged_path.join('Caffeine.app')).must_equal false

      File.ftype(Hbc.appdir.join('Caffeine-2.app')).must_equal 'directory'
      File.exist?(cask.staged_path.join('Caffeine-2.app')).must_equal false
    end

    it "works with an application in a subdir" do
      cask = local_two_apps_subdir
      TestHelper.install_without_artifacts(cask)

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
      File.exist?(cask.staged_path.join('Caffeine.app')).must_equal false

      File.ftype(Hbc.appdir.join('Caffeine-2.app')).must_equal 'directory'
      File.exist?(cask.staged_path.join('Caffeine-2.app')).must_equal false
    end

    it "only uses apps when they are specified" do
      cask = local_two_apps_caffeine

      app_path = cask.staged_path.join('Caffeine.app')
      FileUtils.cp_r app_path, app_path.sub('Caffeine.app', 'CaffeineAgain.app')

      shutup do
        Hbc::Artifact::App.new(cask).install_phase
      end

      File.ftype(Hbc.appdir.join('Caffeine.app')).must_equal 'directory'
      File.exist?(cask.staged_path.join('Caffeine.app')).must_equal false

      File.exist?(Hbc.appdir.join('CaffeineAgain.app')).must_equal false
      File.exist?(cask.staged_path.join('CaffeineAgain.app')).must_equal true
    end

    it "avoids clobbering an existing app (app 1)" do
      cask = local_two_apps_caffeine

      Hbc.appdir.join('Caffeine.app').mkpath

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, <<-MESSAGE.undent.chomp)
         ==> Moving App 'Caffeine-2.app' to '#{Hbc.appdir.join('Caffeine-2.app')}'
         ==> It seems there is already an App at '#{Hbc.appdir.join('Caffeine.app')}'; not moving.
         MESSAGE

      source_path = cask.staged_path.join('Caffeine.app')

      File.identical?(source_path, Hbc.appdir.join('Caffeine.app')).must_equal false
    end

    it "avoids clobbering an existing app (app 2)" do
      cask = local_two_apps_caffeine

      Hbc.appdir.join('Caffeine-2.app').mkpath

      TestHelper.must_output(self, lambda {
        Hbc::Artifact::App.new(cask).install_phase
      }, <<-MESSAGE.undent.chomp)
         ==> It seems there is already an App at '#{Hbc.appdir.join('Caffeine-2.app')}'; not moving.
         ==> Moving App 'Caffeine.app' to '#{Hbc.appdir.join('Caffeine.app')}'
         MESSAGE

      source_path = cask.staged_path.join('Caffeine-2.app')

      File.identical?(source_path, Hbc.appdir.join('Caffeine-2.app')).must_equal false
    end
  end
end
