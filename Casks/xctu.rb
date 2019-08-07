cask 'xctu' do
  version :latest
  sha256 :no_check

  url 'http://ftp1.digi.com/support/utilities/40003027_W.zip'
  name 'XCTU'
  homepage 'https://www.digi.com/products/iot-platform/xctu'

  installer script: {
                      executable: "#{staged_path}/xctu_installer.app/Contents/MacOS/osx-intel",
                      args:       ['--mode', 'unattended'],
                    }

  uninstall trash: '/Applications/XCTU.app'

  zap trash: [
               '~/Library/Caches/XCTU',
               '~/Library/Preferences/XCTU.plist',
               '~/Library/Saved Application State/XCTU.savedState',
             ]
end
