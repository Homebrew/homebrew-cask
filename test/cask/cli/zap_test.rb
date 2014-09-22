require 'test_helper'

describe Cask::CLI::Zap do
  it "shows an error when a bad cask is provided" do
    lambda {
      Cask::CLI::Zap.run('notacask')
    }.must_raise CaskUnavailableError
  end

  it "can zap and unlink multiple casks at once" do
    caffeine = Cask.load('local-caffeine')
    transmission = Cask.load('local-transmission')

    shutup do
      Cask::Installer.new(caffeine).install
      Cask::Installer.new(transmission).install
    end

    caffeine.must_be :installed?
    transmission.must_be :installed?

    shutup do
      Cask::CLI::Zap.run('local-caffeine', 'local-transmission')
    end

    caffeine.wont_be :installed?
    Cask.appdir.join('Transmission.app').wont_be :symlink?
    transmission.wont_be :installed?
    Cask.appdir.join('Caffeine.app').wont_be :symlink?
  end

  # todo
  # Explicit test that both zap and uninstall directives get dispatched.
  # The above tests that implicitly.
  #
  # it "dispatches both uninstall and zap stanzas" do
  #   with_zap = Cask.load('with-zap')
  #
  #   shutup do
  #     Cask::Installer.new(with_zap).install
  #   end
  #
  #   with_zap.must_be :installed?
  #
  #   Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/bin/osascript', '-e', 'tell application "System Events" to count processes whose bundle identifier is "my.fancy.package.app"'], '1')
  #   Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/bin/osascript', '-e', 'tell application id "my.fancy.package.app" to quit'])
  #   Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/bin/osascript', '-e', 'tell application "System Events" to count processes whose bundle identifier is "my.fancy.package.app.from.uninstall"'], '1')
  #   Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/bin/osascript', '-e', 'tell application id "my.fancy.package.app.from.uninstall" to quit'])
  #
  #   Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', with_zap.destination_path/'MyFancyPkg'/'FancyUninstaller.tool', '--please'])
  #   Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/bin/rm', '-rf', '--',
  #                                             Pathname.new('~/Library/Preferences/my.fancy.app.plist').expand_path])
  #
  #   shutup do
  #     Cask::CLI::Zap.run('with-zap')
  #   end
  #   with_zap.wont_be :installed?
  # end

  it "raises an exception when no cask is specified" do
    lambda {
      Cask::CLI::Uninstall.run
    }.must_raise CaskUnspecifiedError
  end
end
