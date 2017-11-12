cask 'upthere-home' do
  version :latest
  sha256 :no_check

  url 'https://upthere.com/apps/mac/UpthereHome.zip'
  name 'Upthere Home'
  homepage 'https://upthere.com/'

  app 'Upthere Home.app'

  zap delete: [
                '~/Library/Application Support/Upthere',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.upthere.home.osx.sfl*',
                '~/Library/Caches/com.crashlytics.data/com.upthere.home.osx',
                '~/Library/Caches/com.upthere.home.osx',
                '~/Library/Caches/io.fabric.sdk.mac.data/com.upthere.home.osx',
                '~/Library/Preferences/com.upthere.home.osx.UPUserDefaults.plist',
                '~/Library/Preferences/com.upthere.home.osx.plist',
                '~/Library/Preferences/com.upthere.home.osx.features.plist',
              ],
      rmdir:  [
                '~/Library/Caches/com.crashlytics.data',
                '~/Library/Caches/io.fabric.sdk.mac.data',
              ]
end
