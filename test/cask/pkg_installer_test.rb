require 'test_helper'

describe Cask::PkgInstaller do
  before {
    @cask = Cask.load('with-installable')
    shutup do
      Cask::Installer.install(@cask)
    end
  }

  after {
    shutup do
      Cask::Installer.uninstall(@cask)
    end
  }

  describe 'install' do
    it 'runs the system installer on the specified pkgs' do
      pkg_installer = Cask::PkgInstaller.new(@cask, Cask::FakeSystemCommand)

      expected_command = "sudo 'installer' '-pkg' '#{@cask.destination_path/'MyFancyPkg'/'Fancy.pkg'}' '-target' '/'"
      Cask::FakeSystemCommand.fake_response_for(expected_command)

      shutup do
        pkg_installer.install
      end

      Cask::FakeSystemCommand.system_calls[expected_command].must_equal 1
    end
  end

  describe 'uninstall' do
    it 'runs the specified uninstaller for the cask' do
      pkg_installer = Cask::PkgInstaller.new(@cask, Cask::FakeSystemCommand)

      expected_command = "sudo '#{@cask.destination_path/'MyFancyPkg'/'FancyUninstaller.tool'}' '--please'"
      Cask::FakeSystemCommand.fake_response_for(expected_command)

      shutup do
        pkg_installer.uninstall
      end

      Cask::FakeSystemCommand.system_calls[expected_command].must_equal 1
    end

    it 'can uninstall using pkgutil, launchctl, and file lists' do
      cask = Cask.load('with-pkgutil-uninstall')
      pkg_installer = Cask::PkgInstaller.new(cask, Cask::FakeSystemCommand)

      Cask::FakeSystemCommand.fake_response_for(
        %Q(pkgutil --pkgs="my.fancy.package.*"),
        [
          'my.fancy.package.main',
          'my.fancy.package.agent',
        ].join("\n")
      )

      Cask::FakeSystemCommand.fake_response_for(
        %Q(pkgutil '--only-files' '--files' 'my.fancy.package.main'),
        [
          'fancy/bin/fancy.exe',
          'fancy/var/fancy.data',
        ].join("\n")
      )
      Cask::FakeSystemCommand.fake_response_for(
        %Q(pkgutil '--only-dirs' '--files' 'my.fancy.package.main'),
        [
          'fancy',
          'fancy/bin',
          'fancy/var',
        ].join("\n")
      )
      Cask::FakeSystemCommand.fake_response_for(
        %Q(pkgutil '--pkg-info-plist' 'my.fancy.package.main'),
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
      Cask::FakeSystemCommand.fake_response_for(%Q(sudo 'pkgutil' '--forget' 'my.fancy.package.main'))

      Cask::FakeSystemCommand.fake_response_for(
        %Q(pkgutil '--only-files' '--files' 'my.fancy.package.agent'),
        [
          'fancy/agent/fancy-agent.exe',
          'fancy/agent/fancy-agent.pid',
          'fancy/agent/fancy-agent.log',
        ].join("\n")
      )
      Cask::FakeSystemCommand.fake_response_for(
        %Q(pkgutil '--only-dirs' '--files' 'my.fancy.package.agent'),
        [
          'fancy',
          'fancy/agent',
        ].join("\n")
      )
      Cask::FakeSystemCommand.fake_response_for(
        %Q(pkgutil '--pkg-info-plist' 'my.fancy.package.agent'),
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
      Cask::FakeSystemCommand.fake_response_for(%Q(sudo 'pkgutil' '--forget' 'my.fancy.package.agent'))

      # No assertions after call since all assertions are implicit from the interactions setup above.
      # TODO: verify rmdir / rm commands (requires setting up actual file tree or faking out .exists?
      shutup do
        pkg_installer.uninstall
      end
    end
  end
end
