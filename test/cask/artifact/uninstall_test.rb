require 'test_helper'

describe Hbc::Artifact::Uninstall do
  let(:cask) { Hbc.load('with-installable') }
  let(:uninstall_artifact) { Hbc::Artifact::Uninstall.new(cask, Hbc::FakeSystemCommand) }

  before {
    shutup do
      TestHelper.install_without_artifacts(cask)
    end
  }

  describe 'install_phase' do
    it 'does nothing, because the install_phase method is a no-op' do
      shutup do
        uninstall_artifact.install_phase
      end
    end
  end

  describe 'zap_phase' do
    it 'does nothing, because the zap_phase method is a no-op' do
      shutup do
        uninstall_artifact.zap_phase
      end
    end
  end

  describe 'uninstall_phase' do
    subject {
      shutup do
        uninstall_artifact.uninstall_phase
      end
    }
    # todo: uninstall tests for :signal (implementation does not use SystemCommand)
    it 'runs the specified uninstaller for the Cask' do
      Hbc::FakeSystemCommand.stubs_command(sudo(['/usr/bin/osascript', '-e', 'tell application "System Events" to count processes whose bundle identifier is "my.fancy.package.app"']), '1')
      Hbc::FakeSystemCommand.stubs_command(sudo(['/usr/bin/osascript', '-e', 'tell application id "my.fancy.package.app" to quit']))

      Hbc::FakeSystemCommand.expects_command(['/usr/bin/osascript', '-e', 'tell application "System Events" to delete every login item whose name is "Fancy"'])

      Hbc::FakeSystemCommand.expects_command(sudo([cask.staged_path.join('MyFancyPkg','FancyUninstaller.tool'), '--please']))
      Hbc::FakeSystemCommand.expects_command(sudo(['/bin/rm', '-rf', '--', Pathname.new('/permissible/absolute/path'), Pathname.new('~/permissible/path/with/tilde').expand_path]))
      Hbc::FakeSystemCommand.expects_command(sudo(['/bin/rm', '-f', '--', Pathname.new(TestHelper.local_binary_path('empty_directory')).join('.DS_Store')]))
      Hbc::FakeSystemCommand.expects_command(sudo(['/bin/rmdir', '--', Pathname.new(TestHelper.local_binary_path('empty_directory'))]))

      subject
    end

    describe 'when using pkgutil, launchutil, and kext' do
      let(:cask) { Hbc.load('with-pkgutil-uninstall') }

      it 'can uninstall' do
        Hbc::FakeSystemCommand.stubs_command(
          ['/usr/sbin/pkgutil', '--pkgs=my.fancy.package.*'],
          <<-FILES.undent
            my.fancy.package.main
            my.fancy.package.agent
          FILES
        )

        Hbc::FakeSystemCommand.stubs_command(
          ['/usr/sbin/pkgutil', '--only-files', '--files', 'my.fancy.package.main'],
          <<-FILES.undent
            fancy/bin/fancy.exe
            fancy/var/fancy.data
          FILES
        )
        Hbc::FakeSystemCommand.stubs_command(
          ['/usr/sbin/pkgutil', '--only-dirs', '--files', 'my.fancy.package.main'],
          <<-FILES.undent
            fancy
            fancy/bin
            fancy/var
          FILES
        )
        Hbc::FakeSystemCommand.stubs_command(
          ['/usr/sbin/pkgutil', '--files', 'my.fancy.package.main'],
          <<-FILES.undent
            fancy
            fancy/bin
            fancy/var
            fancy/bin/fancy.exe
            fancy/var/fancy.data
          FILES
        )
        Hbc::FakeSystemCommand.stubs_command(
          ['/usr/sbin/pkgutil', '--pkg-info-plist', 'my.fancy.package.main'],
          <<-PLIST.undent
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
          sudo(['/bin/launchctl', 'list', 'my.fancy.package.service']),
          <<-PLIST.undent
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

        Hbc::FakeSystemCommand.expects_command(sudo(['/bin/launchctl', 'remove', 'my.fancy.package.service']))

        Hbc::FakeSystemCommand.stubs_command(sudo(['/usr/sbin/kextstat', '-l', '-b', 'my.fancy.package.kernelextension']), 'loaded')
        Hbc::FakeSystemCommand.expects_command(sudo(['/sbin/kextunload', '-b', 'my.fancy.package.kernelextension']))
        Hbc::FakeSystemCommand.stubs_command(sudo(['/usr/sbin/pkgutil', '--forget', 'my.fancy.package.main']))

        Hbc::FakeSystemCommand.stubs_command(
          ['/usr/sbin/pkgutil', '--only-files', '--files', 'my.fancy.package.agent'],
          <<-FILES.undent
            fancy/agent/fancy-agent.exe
            fancy/agent/fancy-agent.pid
            fancy/agent/fancy-agent.log
          FILES
        )
        Hbc::FakeSystemCommand.stubs_command(
          ['/usr/sbin/pkgutil', '--only-dirs', '--files', 'my.fancy.package.agent'],
          <<-FILES.undent
            fancy
            fancy/agent
          FILES
        )
        Hbc::FakeSystemCommand.stubs_command(
          ['/usr/sbin/pkgutil', '--files', 'my.fancy.package.agent'],
          <<-FILES.undent
            fancy
            fancy/agent
            fancy/agent/fancy-agent.exe
            fancy/agent/fancy-agent.pid
            fancy/agent/fancy-agent.log
          FILES
        )
        Hbc::FakeSystemCommand.stubs_command(
          ['/usr/sbin/pkgutil', '--pkg-info-plist', 'my.fancy.package.agent'],
          <<-PLIST.undent
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
          Hbc::FakeSystemCommand.stubs_command(sudo(['/bin/chmod', '--', '777', '#{dir}']))
        end

        Hbc::FakeSystemCommand.stubs_command(sudo(['/usr/sbin/pkgutil', '--forget', 'my.fancy.package.agent']))

        Hbc::FakeSystemCommand.stubs_command(sudo(['/bin/rm', '-f', '--',
                                               Pathname.new('/tmp/fancy/bin/fancy.exe'),
                                               Pathname.new('/tmp/fancy/var/fancy.data')]))
        Hbc::FakeSystemCommand.stubs_command(sudo(['/bin/rm', '-f', '--',
                                               Pathname.new('/tmp/fancy/agent/fancy-agent.exe'),
                                               Pathname.new('/tmp/fancy/agent/fancy-agent.pid'),
                                               Pathname.new('/tmp/fancy/agent/fancy-agent.log')]))

        subject
      end
    end
  end
end
