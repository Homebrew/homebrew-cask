require 'test_helper'

describe Cask::Installer do
  describe "install" do
    it "downloads and installs a nice fresh Cask" do
      caffeine = Cask.load('local-caffeine')

      shutup do
        Cask::Installer.install(caffeine)
      end

      dest_path = HOMEBREW_CELLAR/'local-caffeine'/caffeine.version
      dest_path.must_be :directory?
      application = dest_path/'Caffeine.app'
      application.must_be :directory?
    end
  end

  describe "uninstall" do
    it "fully uninstalls a cask" do
      caffeine = Cask.load('local-caffeine')

      shutup do
        Cask::Installer.install(caffeine)
        Cask::Installer.uninstall(caffeine)
      end

      dest_path = HOMEBREW_CELLAR/'local-caffeine'/caffeine.version
      application = dest_path/'Caffeine.app'

      application.wont_be :directory?
      dest_path.wont_be :directory?
    end
  end
end
