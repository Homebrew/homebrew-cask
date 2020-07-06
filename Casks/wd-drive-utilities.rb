cask 'wd-drive-utilities' do
  version '2.1.1.119'
  sha256 '4dfa9a45e7eab7f153df06877ac44be9d9c148c1f7d8dd868c05fa20f5703679'

  url "https://downloads.wdc.com/wdapp/WD_Utilities_Standalone_Installer_Mac_#{version.dots_to_underscores}.zip"
  appcast 'https://support-en.wd.com/app/products/downloads/release-notes/note_id/29496'
  name 'WD Drive Utilities'
  homepage 'https://support.wdc.com/downloads.aspx'

  container nested: "WD_Utilities_Installer_for_Mac_#{version.dots_to_underscores}.dmg"

  installer script: {
                      executable: 'WD Drive Utilities Installer.app/Contents/MacOS/WD Drive Utilities Installer',
                      sudo:       true,
                    }

  uninstall script: {
                      executable: '/Applications/WD Drive Utilities Uninstaller.app/Contents/MacOS/WD Drive Utilities Installer',
                      sudo:       true,

                    }
end
