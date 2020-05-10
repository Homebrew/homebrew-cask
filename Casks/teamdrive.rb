cask 'teamdrive' do
  version '4.6.10.2619'
  sha256 '8c2c2ed60fd64e0dffc7521a0b41a3c243e98a3e1545c0e58c8bded868bc49bd'

  # teamdrive.net/ was verified as official when first introduced to the cask
  url "https://download.teamdrive.net/#{version.major_minor}.#{version.split('.').last}/TMDR/mac-10.14.6/Install-TeamDrive-#{version}_TMDR.dmg"
  appcast 'https://teamdrive.com/en/downloads/',
          configuration: version.major_minor_patch
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
