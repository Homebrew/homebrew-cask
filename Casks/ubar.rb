cask 'ubar' do
  version '4.1.0'
  sha256 'fc249133a0c61e4b795ef8d1d6280e103d3f3f2378abb243732abe61e01125df'

  url "https://www.brawersoftware.com/downloads/ubar/ubar#{version.no_dots}.zip"
  appcast "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml"
  name 'uBar'
  homepage 'https://brawersoftware.com/products/ubar'

  depends_on macos: '>= :mavericks'

  app 'uBar.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.brawer.ubar.sfl*',
               '~/Library/Application Support/uBar',
               '~/Library/Caches/ca.brawer.uBar',
               '~/Library/Preferences/ca.brawer.uBar.plist',
             ]
end
