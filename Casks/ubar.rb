cask 'ubar' do
  version '4.0.7'
  sha256 '3afd459d1c898faf8b8c81ce4c65395838958864fa2ee8e5a67e446c740c7032'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.no_dots}.zip"
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
