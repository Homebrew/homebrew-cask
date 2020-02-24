cask 'xctu' do
  version '40003027_Y'
  sha256 '62e54d4f2760018b1b6b210e34cab26f0986ab117fa25738fedc9f98efffe6a0'

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
