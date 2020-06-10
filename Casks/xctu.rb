cask 'xctu' do
  version '40003027_Z'
  sha256 'edcf9849b4581ad2aa196562331e888b1b030e459ec51ede5693b21a8aac4a9c'

  url "https://ftp1.digi.com/support/utilities/#{version}.zip"
  appcast 'https://www.digi.com/support/includes/utilities.aspx?pid=3352'
  name 'XCTU'
  homepage 'https://www.digi.com/products/embedded-systems/digi-xbee-tools/xctu'

  installer script: {
                      executable: "#{staged_path}/xctu_installer.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                    }

  uninstall trash: '/Applications/XCTU.app'

  zap trash: [
               '~/Library/Caches/XCTU',
               '~/Library/Preferences/XCTU.plist',
               '~/Library/Saved Application State/XCTU.savedState',
             ]
end
