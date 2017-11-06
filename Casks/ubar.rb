cask 'ubar' do
  version '4.0.4'
  sha256 'a8609cde9e128cfa29aabdbd067480e93e7e2e004a3af483891918164211cb1c'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.no_dots}.zip"
  appcast "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml",
          checkpoint: '46820c6898656f017fa37f691fa7a674c52de1575f1adb88959368703ec90530'
  name 'uBar'
  homepage 'https://brawersoftware.com/products/ubar'

  depends_on macos: '>= :mavericks'

  app 'uBar.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.brawer.ubar.sfl',
                '~/Library/Caches/ca.brawer.uBar',
              ],
      trash:  [
                '~/Library/Application Support/uBar',
                '~/Library/Preferences/ca.brawer.uBar.plist',
              ]
end
