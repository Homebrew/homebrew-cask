cask 'ubar' do
  version '4.1.5'
  sha256 '917c6e0b3bdb31c98cdf02c39fe478695c448ef6d58c252970a421b6770d5a7c'

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
