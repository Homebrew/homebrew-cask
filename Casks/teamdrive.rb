cask 'teamdrive' do
  version '4.6.11.2662'
  sha256 'ff850b25cf6171a5fcd9dda1429855c239066e2ef5f67bb6e7ce8b4a03ea01b0'

  # teamdrive.net/ was verified as official when first introduced to the cask
  url "https://download.teamdrive.net/#{version.major_minor}.#{version.split('.').last}/TMDR/mac-10.14.6/Install-TeamDrive-#{version}_TMDR.dmg"
  appcast 'https://teamdrive.com/en/downloads/',
          must_contain: version.major_minor_patch
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
