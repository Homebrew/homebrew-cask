cask 'teamdrive' do
  version '4.6.8.2441'
  sha256 'ea699840e05e47dda4b4d522978bf49374bfada0072e6185e59b3780cc3d1ecc'

  # s3-eu-west-1.amazonaws.com/s3download.teamdrive.net was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/s3download.teamdrive.net/#{version.major_minor}.#{version.split('.').last}/TMDR/mac-10.14.6/Install-TeamDrive-#{version}_TMDR.dmg"
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
