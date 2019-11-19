cask 'teamdrive' do
  version '4.6.7.2415'
  sha256 'e5cf9dc14066e895a59ff70672c84cb34fe1f3a1f7836bffad3675124c9450f9'

  # s3-eu-west-1.amazonaws.com/s3download.teamdrive.net was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/s3download.teamdrive.net/#{version.major_minor}.#{version.split('.').last}/TMDR/mac-10.14.2/Install-TeamDrive-#{version}_TMDR.dmg"
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
