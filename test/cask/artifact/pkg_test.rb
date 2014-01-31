require 'test_helper'

describe Cask::Artifact::Pkg do
  before {
    @cask = Cask.load('with-installable')
    shutup do
      TestHelper.install_without_artifacts(@cask)
    end
  }

  describe 'install' do
    it 'runs the system installer on the specified pkgs' do
      pkg = Cask::Artifact::Pkg.new(@cask, Cask::FakeSystemCommand)

      expected_command = "/usr/bin/sudo -E '/usr/sbin/installer' '-pkg' '#{@cask.destination_path/'MyFancyPkg'/'Fancy.pkg'}' '-target' '/' 2>&1"
      Cask::FakeSystemCommand.stubs_command(expected_command)

      shutup do
        pkg.install
      end

      Cask::FakeSystemCommand.system_calls[expected_command].must_equal 1
    end
  end

  describe 'uninstall' do
    it 'runs the specified uninstaller for the cask' do
      pkg = Cask::Artifact::Pkg.new(@cask, Cask::FakeSystemCommand)

      Cask::FakeSystemCommand.stubs_command(%Q(/usr/bin/sudo -E '/usr/bin/osascript' '-e' 'tell application "System Events" to count processes whose bundle identifier is "my.fancy.package.app"' 2>&1), '1')
      Cask::FakeSystemCommand.stubs_command(%Q(/usr/bin/sudo -E '/usr/bin/osascript' '-e' 'tell application id "my.fancy.package.app" to quit' 2>&1))

      expected_command = "/usr/bin/sudo -E '#{@cask.destination_path/'MyFancyPkg'/'FancyUninstaller.tool'}' '--please' 2>&1"
      Cask::FakeSystemCommand.stubs_command(expected_command)

      shutup do
        pkg.uninstall
      end

      Cask::FakeSystemCommand.system_calls[expected_command].must_equal 1
    end

    it 'can uninstall using pkgutil, launchctl, and file lists' do
      cask = Cask.load('with-pkgutil-uninstall')
      pkg = Cask::Artifact::Pkg.new(cask, Cask::FakeSystemCommand)

      Cask::FakeSystemCommand.stubs_command(
        %Q(/usr/sbin/pkgutil --pkgs="my.fancy.package.*" 2>&1),
        [
          'my.fancy.package.main',
          'my.fancy.package.agent',
        ].join("\n")
      )

      Cask::FakeSystemCommand.stubs_command(
        %Q(/usr/sbin/pkgutil '--only-files' '--files' 'my.fancy.package.main' 2>&1),
        [
          'fancy/bin/fancy.exe',
          'fancy/var/fancy.data',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
        %Q(/usr/sbin/pkgutil '--only-dirs' '--files' 'my.fancy.package.main' 2>&1),
        [
          'fancy',
          'fancy/bin',
          'fancy/var',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
        %Q(/usr/sbin/pkgutil '--pkg-info-plist' 'my.fancy.package.main' 2>&1),
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
        %Q(/bin/launchctl 'list' '-x' 'my.fancy.package.service' 2>&1),
        "launchctl list returned unknown response\n"
      )
      Cask::FakeSystemCommand.stubs_command(
        %Q(/usr/bin/sudo -E '/bin/launchctl' 'list' '-x' 'my.fancy.package.service' 2>&1),
        <<-PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>my.fancy.package.service</string>
	<key>LastExitStatus</key>
	<integer>0</integer>
	<key>LimitLoadToSessionType</key>
	<string>System</string>
	<key>OnDemand</key>
	<true/>
	<key>ProgramArguments</key>
	<array>
		<string>argument</string>
	</array>
	<key>TimeOut</key>
	<integer>30</integer>
</dict>
</plist>
        PLIST
      )
      Cask::FakeSystemCommand.expects_command(%Q(/usr/bin/sudo -E '/bin/launchctl' 'remove' 'my.fancy.package.service' 2>&1))

      Cask::FakeSystemCommand.stubs_command(%Q(/usr/bin/sudo -E '/usr/sbin/kextstat' '-l' '-b' 'my.fancy.package.kernelextension' 2>&1), 'loaded')
      Cask::FakeSystemCommand.expects_command(%Q(/usr/bin/sudo -E '/sbin/kextunload' '-b' 'my.fancy.package.kernelextension' 2>&1))
      Cask::FakeSystemCommand.stubs_command(%Q(/usr/bin/sudo -E '/usr/sbin/pkgutil' '--forget' 'my.fancy.package.main' 2>&1))

      Cask::FakeSystemCommand.stubs_command(
        %Q(/usr/sbin/pkgutil '--only-files' '--files' 'my.fancy.package.agent' 2>&1),
        [
          'fancy/agent/fancy-agent.exe',
          'fancy/agent/fancy-agent.pid',
          'fancy/agent/fancy-agent.log',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
        %Q(/usr/sbin/pkgutil '--only-dirs' '--files' 'my.fancy.package.agent' 2>&1),
        [
          'fancy',
          'fancy/agent',
        ].join("\n")
      )
      Cask::FakeSystemCommand.stubs_command(
        %Q(/usr/sbin/pkgutil '--pkg-info-plist' 'my.fancy.package.agent' 2>&1),
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
        Cask::FakeSystemCommand.stubs_command(%Q(/usr/bin/sudo -E '/bin/chmod' '777' '#{dir}' 2>&1))
      end

      Cask::FakeSystemCommand.stubs_command(%Q(/usr/bin/sudo -E '/usr/sbin/pkgutil' '--forget' 'my.fancy.package.agent' 2>&1))

      Cask::FakeSystemCommand.stubs_command(%Q(/usr/bin/sudo -E '/bin/rm' '-f' '/tmp/fancy/bin/fancy.exe' '/tmp/fancy/var/fancy.data' 2>&1))
      Cask::FakeSystemCommand.stubs_command(%Q(/usr/bin/sudo -E '/bin/rm' '-f' '/tmp/fancy/agent/fancy-agent.exe' '/tmp/fancy/agent/fancy-agent.pid' '/tmp/fancy/agent/fancy-agent.log' 2>&1))

      # No assertions after call since all assertions are implicit from the interactions setup above.
      # TODO: verify rmdir commands (requires setting up actual file tree or faking out .exists?
      shutup do
        pkg.uninstall
      end
    end
  end
end
