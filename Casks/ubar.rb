cask 'ubar' do
  version '3.2.4'
  sha256 '185557b629c61cbb8ffa3f8111471de1540e4803a359e099246ed31460192680'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.no_dots}.zip"
  appcast "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml",
          checkpoint: '1d54e5b404c005064cccef0caee02ce5e336d175adb99202c242e6281f7f0570'
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
