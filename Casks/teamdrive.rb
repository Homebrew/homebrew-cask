cask 'teamdrive' do
  version '4.6.9.2597'
  sha256 'b4a0022e712ce163c9160e84720328bacac9e6833d2ad76d891a6c82508d1c0b'

  # teamdrive.net/ was verified as official when first introduced to the cask
  url "https://download.teamdrive.net/#{version.major_minor}.#{version.split('.').last}/TMDR/mac-10.14.6/Install-TeamDrive-#{version}_TMDR.dmg"
  appcast 'https://teamdrive.com/en/downloads/'
  name 'TeamDrive'
  homepage 'https://www.teamdrive.com/'

  installer script: {
                      executable: "Install-TeamDrive-#{version}_TMDR.app/Contents/MacOS/osx-x86_64",
                      args:       ['--unattendedmodeui', 'none', '--mode', 'unattended'],
                    }

  uninstall script: {
                      executable: '/Applications/TeamDrive/uninstall.app/Contents/MacOS/osx-x86_64',
                      args:       ['--mode', 'unattended'],
                    },
            signal: [
                      ['QUIT', 'com.teamdrive.teamdrive3'],
                      ['KILL', 'com.teamdrive.teamdrive3'],
                      ['QUIT', 'com.teamdrive.teamdrive3.FinderExt'],
                      ['KILL', 'com.teamdrive.teamdrive3.FinderExt'],
                      ['QUIT', 'com.teamdrive.teamdrive3.MenuExt'],
                      ['KILL', 'com.teamdrive.teamdrive3.MenuExt'],
                    ]
end
