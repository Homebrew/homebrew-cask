cask 'ubar' do
  version '4.0.1'
  sha256 '2ebc0cf7d74553f44308eb93f72f2a897e8d403a961cc16023cc843471b3e1f0'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.no_dots}.zip"
  appcast "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml",
          checkpoint: '25f9839af108389ace53991d20df808e5f58de71bd3906bdab310244729b067a'
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
