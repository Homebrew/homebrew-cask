cask 'teamdrive' do
  version '4.3.0.1605'
  sha256 '24249162a183c496203c1946fdbc0cbc5da915a056f4dbd36ad916d7c5961603'

  # s3download.teamdrive.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://s3download.teamdrive.net.s3.amazonaws.com/4.3.1605/TMDR/mac-10.10.5/Install-TeamDrive-#{version}_TMDR.dmg"
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
