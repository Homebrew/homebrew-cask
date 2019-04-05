cask 'ubar' do
  version '4.1.3'
  sha256 'bd2cd66c364d7e076e10d01e05b978c947b5bb1c6a1ee17d0b5a15db0f5e2323'

  url "https://www.brawersoftware.com/downloads/ubar/ubar#{version.no_dots}.zip"
  appcast "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml"
  name 'uBar'
  homepage 'https://brawersoftware.com/products/ubar'

  app 'uBar.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.brawer.ubar.sfl*',
               '~/Library/Application Support/uBar',
               '~/Library/Caches/ca.brawer.uBar',
               '~/Library/Preferences/ca.brawer.uBar.plist',
             ]
end
