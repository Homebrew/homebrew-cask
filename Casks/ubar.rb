cask 'ubar' do
  version '3.2.6'
  sha256 '76f87ebb3a74b40d6299354cd4f34c63480cd5951c2276a3a4d95c65882dd1a0'

  url "http://www.brawersoftware.com/downloads/ubar/ubar#{version.no_dots}.zip"
  appcast "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml",
          checkpoint: 'bd56dabff2625be4c5843c8cd67eeac340dc7f38f0e05487336bb3907202b7c0'
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
