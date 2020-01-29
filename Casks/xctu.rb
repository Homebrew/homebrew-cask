cask 'xctu' do
  version '40003027_Y'
  sha256 :no_check

  url "https://ftp1.digi.com/support/utilities/#{version}.zip"
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
