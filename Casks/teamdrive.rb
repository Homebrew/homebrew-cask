cask 'teamdrive' do
  version '4.3.1.1654'
  sha256 'd94f74ef63b08e427f1a4a86258e64f985111b88f1207f47d5835747edbea976'

  # s3download.teamdrive.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://s3download.teamdrive.net.s3.amazonaws.com/#{version.major_minor}.#{version.split('.').last}/TMDR/mac-10.10.5/Install-TeamDrive-#{version}_TMDR.dmg"
  name 'TeamDrive'
  homepage 'https://www.teamdrive.com/'

  installer script: {
                      executable: "Install-TeamDrive-#{version}_TMDR.app/Contents/MacOS/osx-intel",
                      args:       ['--unattendedmodeui', 'none', '--mode', 'unattended'],
                    }

  uninstall script: {
                      executable: '/Applications/TeamDrive/uninstall.app/Contents/MacOS/osx-intel',
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
