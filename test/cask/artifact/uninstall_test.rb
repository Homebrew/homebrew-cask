require 'test_helper'

describe Cask::Artifact::Uninstall do
  before {
    @cask = Cask.load('with-installable')
    shutup do
      TestHelper.install_without_artifacts(@cask)
    end
  }

  describe 'install_phase' do
    it 'does nothing, because the install_phase method is a no-op' do
      uninstall_artifact = Cask::Artifact::Uninstall.new(@cask, Cask::FakeSystemCommand)
      shutup do
        uninstall_artifact.install_phase
      end
    end
  end

  describe 'zap_phase' do
    it 'does nothing, because the zap_phase method is a no-op' do
      uninstall_artifact = Cask::Artifact::Uninstall.new(@cask, Cask::FakeSystemCommand)
      shutup do
        uninstall_artifact.zap_phase
      end
    end
  end

  describe 'uninstall_phase' do
    # todo: uninstall tests for :signal (implementation does not use SystemCommand)
    it 'runs the specified uninstaller for the Cask' do
      uninstall_artifact = Cask::Artifact::Uninstall.new(@cask, Cask::FakeSystemCommand)

      Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/bin/osascript', '-e', 'tell application "System Events" to count processes whose bundle identifier is "my.fancy.package.app"'], '1')
      Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/bin/osascript', '-e', 'tell application id "my.fancy.package.app" to quit'])

      Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', @cask.staged_path/'MyFancyPkg'/'FancyUninstaller.tool', '--please'])
      Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/bin/rm', '-rf', '--', '/permissible/absolute/path'])
      Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/bin/rm', '-f', '--', Pathname.new(TestHelper.local_binary_path('empty_directory')).join('.DS_Store')])
      Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/bin/rmdir', '--', Pathname.new(TestHelper.local_binary_path('empty_directory'))])

      shutup do
        uninstall_artifact.uninstall_phase
      end
    end

    it 'can uninstall using pkgutil, launchctl, and file lists' do
      cask = Cask.load('with-pkgutil-uninstall')
      uninstall_artifact = Cask::Artifact::Uninstall.new(cask, Cask::FakeSystemCommand)

      Cask::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--pkgs=my.fancy.package.*'],
        [
          'my.fancy.package.main',
          'my.fancy.package.agent',
        ].join("\n")
      )

      Cask::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--only-files', '--files', 'my.fancy.package.main'],
        [
          'fancy/bin/fancy.exe',
          'fancy/var/fancy.data',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--only-dirs', '--files', 'my.fancy.package.main'],
        [
          'fancy',
          'fancy/bin',
          'fancy/var',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--files', 'my.fancy.package.main'],
        [
          'fancy',
          'fancy/bin',
          'fancy/var',
          'fancy/bin/fancy.exe',
          'fancy/var/fancy.data',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
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

      Cask::FakeSystemCommand.stubs_command(
        ['/bin/launchctl', 'list', 'my.fancy.package.service'],
        "launchctl list returned unknown response\n"
      )
      Cask::FakeSystemCommand.stubs_command(
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

      Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/bin/launchctl', 'remove', 'my.fancy.package.service'])
      Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/bin/launchctl', 'unload', '-w', '--', 'my.fancy.package.service'])

      Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/sbin/kextstat', '-l', '-b', 'my.fancy.package.kernelextension'], 'loaded')
      Cask::FakeSystemCommand.expects_command(['/usr/bin/sudo', '-E', '--', '/sbin/kextunload', '-b', 'my.fancy.package.kernelextension'])
      Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/sbin/pkgutil', '--forget', 'my.fancy.package.main'])

      Cask::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--only-files', '--files', 'my.fancy.package.agent'],
        [
          'fancy/agent/fancy-agent.exe',
          'fancy/agent/fancy-agent.pid',
          'fancy/agent/fancy-agent.log',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--only-dirs', '--files', 'my.fancy.package.agent'],
        [
          'fancy',
          'fancy/agent',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
        ['/usr/sbin/pkgutil', '--files', 'my.fancy.package.agent'],
        [
          'fancy',
          'fancy/agent',
          'fancy/agent/fancy-agent.exe',
          'fancy/agent/fancy-agent.pid',
          'fancy/agent/fancy-agent.log',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
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
        Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/bin/chmod', '--', '777', '#{dir}'])
      end

      Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/usr/sbin/pkgutil', '--forget', 'my.fancy.package.agent'])

      Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/bin/rm', '-f', '--',
                                             Pathname.new('/tmp/fancy/bin/fancy.exe'),
                                             Pathname.new('/tmp/fancy/var/fancy.data')])
      Cask::FakeSystemCommand.stubs_command(['/usr/bin/sudo', '-E', '--', '/bin/rm', '-f', '--',
                                             Pathname.new('/tmp/fancy/agent/fancy-agent.exe'),
                                             Pathname.new('/tmp/fancy/agent/fancy-agent.pid'),
                                             Pathname.new('/tmp/fancy/agent/fancy-agent.log')])

      # No assertions after call since all assertions are implicit from the interactions setup above.
      # TODO: verify rmdir commands (requires setting up actual file tree or faking out .exists?
      shutup do
        uninstall_artifact.uninstall_phase
      end
    end
  end
end
