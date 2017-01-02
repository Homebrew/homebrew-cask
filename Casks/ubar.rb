cask 'ubar' do
  version '3.2.5'
  sha256 '25d42b6770e2ae2debb4d570c33b5e661b71b4c7f24bda61016968cd66fe3638'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.no_dots}.zip"
  appcast "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml",
          checkpoint: 'd09faa07d4adfc30ac31934981bf90162fc1c007cfc5affbf53b5118ccd79ca2'
  name 'uBar'
  homepage 'https://brawersoftware.com/products/ubar'

  depends_on macos: '>= :mavericks'

  app 'uBar.app'

  zap delete: [
                '~/Library/Application Support/uBar',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.brawer.ubar.sfl',
                '~/Library/Caches/ca.brawer.uBar',
                '~/Library/Preferences/ca.brawer.uBar.plist',
              ]
end
