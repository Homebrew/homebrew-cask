cask 'teamdrive' do
  version '4.2.1.1547'
  sha256 '9035faf2670bd77259667e69952a392f535be7ba116f8a291ee79e700e5099bd'

  # s3download.teamdrive.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://s3download.teamdrive.net.s3.amazonaws.com/#{version}/TMDR/mac-10.10.5/Install-TeamDrive-#{version}_TMDR.dmg"
  name 'TeamDrive'
  homepage 'https://www.teamdrive.com/'

  installer script: "Install-TeamDrive-#{version}_TMDR.app/Contents/MacOS/osx-intel",
            args:   ['--unattendedmodeui', 'none', '--mode', 'unattended']

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
