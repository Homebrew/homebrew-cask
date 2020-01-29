cask 'xctu' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = 'https://ftp1.digi.com/support/utilities/'
    file = URI.open(base_url).read.scan(%r{HREF="/support/utilities/(4[0-9]+_.\.zip)"}).flatten.last
    "#{base_url}#{file}"
  end
  name 'XCTU'
  homepage 'https://www.digi.com/products/embedded-systems/digi-xbee-tools/xctu'

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
