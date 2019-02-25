cask 'teamdrive' do
  version '4.6.7.2230'
  sha256 '87e00a27fbcb88dc5fb44f72ed8d81a4a7914a1bbb1bace71f50a843816e9adc'

  # s3-eu-west-1.amazonaws.com/s3download.teamdrive.net was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/s3download.teamdrive.net/#{version.major_minor}.#{version.split('.').last}/TMDR/mac-10.14.2/Install-TeamDrive-#{version}_TMDR.dmg"
  appcast 'https://teamdrive.com/en/downloads/?utm_source=startingpage&utm_medium=cta&utm_campaign=download_en'
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
