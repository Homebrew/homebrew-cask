require 'test_helper'

# todo
# - test that zap removes an alternate version of the same Cask

describe Hbc::Artifact::Zap do
  before {
    @cask = Hbc.load('with-zap')
    shutup do
      TestHelper.install_without_artifacts(@cask)
    end
  }

  describe 'install_phase' do
    it 'does nothing, because the install_phase method is a no-op' do
      zap_artifact = Hbc::Artifact::Zap.new(@cask, Hbc::FakeSystemCommand)
      shutup do
        zap_artifact.install_phase
      end
    end
  end

  describe 'uninstall_phase' do
    it 'does nothing, because the uninstall_phase method is a no-op' do
      zap_artifact = Hbc::Artifact::Zap.new(@cask, Hbc::FakeSystemCommand)
      shutup do
        zap_artifact.uninstall_phase
      end
    end
  end

  describe 'zap_phase' do
    # todo: zap tests for :signal (implementation does not use SystemCommand)
    it 'runs the specified zap procedures for the Cask' do
      zap_artifact = Hbc::Artifact::Zap.new(@cask, Hbc::FakeSystemCommand)

      Hbc::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/bin/osascript', '-e', 'tell application "System Events" to count processes whose bundle identifier is "my.fancy.package.app"'], '1')
      Hbc::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/bin/osascript', '-e', 'tell application id "my.fancy.package.app" to quit'])

      Hbc::FakeSystemCommand.expects_command(['/usr/bin/osascript', '-e', 'tell application "System Events" to delete every login item whose name is "Fancy"'])

      Hbc::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', @cask.staged_path.join('MyFancyPkg','FancyUninstaller.tool'), '--please'])
      Hbc::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/bin/rm', '-rf', '--',
                                               Pathname.new('~/Library/Preferences/my.fancy.app.plist').expand_path])

      shutup do
        zap_artifact.zap_phase
      end
    end

    it 'can zap using pkgutil, launchctl, and file lists' do
      cask = Hbc.load('with-pkgutil-zap')
      zap_artifact = Hbc::Artifact::Zap.new(cask, Hbc::FakeSystemCommand)

      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--pkgs=my.fancy.package.*'],
        [
          'my.fancy.package.main',
          'my.fancy.package.agent',
        ].join("\n")
      )

      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--only-files', '--files', 'my.fancy.package.main'],
        [
          'fancy/bin/fancy.exe',
          'fancy/var/fancy.data',
        ].join("\n")
      )
      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--only-dirs', '--files', 'my.fancy.package.main'],
        [
          'fancy',
          'fancy/bin',
          'fancy/var',
        ].join("\n")
      )
      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--files', 'my.fancy.package.main'],
        [
          'fancy',
          'fancy/bin',
          'fancy/var',
          'fancy/bin/fancy.exe',
          'fancy/var/fancy.data',
        ].join("\n")
      )
      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--pkg-info-plist', 'my.fancy.package.main'],
        <<-PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>install-location</key>
        <string>tmp</string>
        <key>volume</key>
        <string>/</string>
</dict>
</plist>
        PLIST
      )

      Hbc::FakeSystemCommand.stubs_command(
        ['/bin/launchctl', 'list', 'my.fancy.package.service'],
        "launchctl list returned unknown response\n"
      )
      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/bin/sudo', '-E', '--', '/bin/launchctl', 'list', 'my.fancy.package.service'],
        <<-"PLIST"
{
        "LimitLoadToSessionType" = "Aqua";
        "Label" = "my.fancy.package.service";
        "TimeOut" = 30;
        "OnDemand" = true;
        "LastExitStatus" = 0;
        "ProgramArguments" = (
                "argument";
        );
};
        PLIST
      )

      Hbc::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/bin/launchctl', 'remove', 'my.fancy.package.service'])

      Hbc::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/sbin/kextstat', '-l', '-b', 'my.fancy.package.kernelextension'], 'loaded')
      Hbc::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/sbin/kextunload', '-b', 'my.fancy.package.kernelextension'])
      Hbc::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/sbin/pkgutil', '--forget', 'my.fancy.package.main'])

      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--only-files', '--files', 'my.fancy.package.agent'],
        [
          'fancy/agent/fancy-agent.exe',
          'fancy/agent/fancy-agent.pid',
          'fancy/agent/fancy-agent.log',
        ].join("\n")
      )
      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--only-dirs', '--files', 'my.fancy.package.agent'],
        [
          'fancy',
          'fancy/agent',
        ].join("\n")
      )
      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--files', 'my.fancy.package.agent'],
        [
          'fancy',
          'fancy/agent',
          'fancy/agent/fancy-agent.exe',
          'fancy/agent/fancy-agent.pid',
          'fancy/agent/fancy-agent.log',
        ].join("\n")
      )
      Hbc::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--pkg-info-plist', 'my.fancy.package.agent'],
        <<-PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>install-location</key>
        <string>tmp</string>
        <key>volume</key>
        <string>/</string>
</dict>
</plist>
        PLIST
      )

      %w[
        /tmp/fancy
        /tmp/fancy/agent
        /tmp/fancy/bin
        /tmp/fancy/var
      ].each do |dir|
        Hbc::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/bin/chmod', '--', '777', '#{dir}'])
      end

      Hbc::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/sbin/pkgutil', '--forget', 'my.fancy.package.agent'])

      Hbc::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/bin/rm', '-f', '--',
                                             Pathname.new('/tmp/fancy/bin/fancy.exe'),
                                             Pathname.new('/tmp/fancy/var/fancy.data')])
      Hbc::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/bin/rm', '-f', '--',
                                             Pathname.new('/tmp/fancy/agent/fancy-agent.exe'),
                                             Pathname.new('/tmp/fancy/agent/fancy-agent.pid'),
                                             Pathname.new('/tmp/fancy/agent/fancy-agent.log')])

      # No assertions after call since all assertions are implicit from the interactions setup above.
      # TODO: verify rmdir commands (requires setting up actual file tree or faking out .exists?
      shutup do
        zap_artifact.zap_phase
      end
    end
  end
end
