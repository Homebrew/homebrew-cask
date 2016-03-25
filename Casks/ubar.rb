cask 'ubar' do
  version '3.1.3'
  sha256 '5c27b124fd66ae83c19cff3e23c384246fb77dc8141e719a617a030e3ced0ed2'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.delete('.')}.zip"
  appcast "http://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.to_i}.xml",
          checkpoint: '22b228e327e10fc5b1d2a05974471af5f0397946caf363006b3078b6cc56fe12'
  name 'uBar'
  homepage 'http://brawersoftware.com/products/ubar'
  license :commercial

  depends_on macos: '>= :mavericks'

  app 'uBar.app'

  zap delete: [
                '~/Library/Application Support/uBar',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.brawer.ubar.sfl',
                '~/Library/Caches/ca.brawer.uBar',
                '~/Library/Preferences/ca.brawer.uBar.plist',
              ]
end
