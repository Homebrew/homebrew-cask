cask 'ubar' do
  version '4.1.1'
  sha256 '1a8565ac175aa22eb3ead10ac8e80d61fe8310e2cf575c6a931019f66b12dff7'

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
