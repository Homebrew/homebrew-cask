cask 'ubar' do
  version '3.1.2'
  sha256 '899d7530958ae78d315a25ebb2bc2614c572cbd0bb8e1057e1725f602b415ac0'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.delete('.')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.to_i}.xml",
          :sha256 => '766a1635b0f2fe66ebb27a6f4813c70688d5d99792b023dcf6762721663bc977'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  depends_on :macos => '>= :mavericks'

  app 'uBar.app'

  zap :delete => [
                   '~/Library/Application Support/uBar',
                   '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.brawer.ubar.sfl',
                   '~/Library/Caches/ca.brawer.uBar',
                   '~/Library/Preferences/ca.brawer.uBar.plist',
                 ]
end
