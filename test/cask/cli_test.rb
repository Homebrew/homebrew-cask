require 'test_helper'

describe Cask::CLI do
  it "lists the taps for casks that show up in two taps" do
    Cask::CLI.nice_listing(%w[
      phinze-cask/adium
      phinze-cask/google-chrome
      passcod-cask/adium
    ]).must_equal(%w[
      google-chrome
      passcod-cask/adium
      phinze-cask/adium
    ])
  end

  describe "process" do
    it "creates the appdir if it does not exist" do
      Cask.appdir.rmdir
      shutup {
        Cask::CLI.process('list')
      }
      Cask.appdir.directory?.must_equal true
    end

    it "respects the env variable when choosing what appdir to create, not touching the default appdir" do
      default_applications_dir = Cask.appdir
      default_applications_dir.rmdir
      custom_applications_dir = Pathname(Dir.mktmpdir('custom_app_dir'))
      custom_applications_dir.rmdir

      default_applications_dir.directory?.must_equal false
      custom_applications_dir.directory?.must_equal false

      begin
        ENV['HOMEBREW_CASK_OPTS'] = "--appdir=#{custom_applications_dir}"
        shutup {
          Cask::CLI.process('list')
        }
      ensure
        ENV.delete 'HOMEBREW_CASK_OPTS'
      end

      default_applications_dir.directory?.must_equal false
      custom_applications_dir.directory?.must_equal true
    end
  end
end
