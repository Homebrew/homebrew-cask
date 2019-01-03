cask 'upthere-home' do
  version '1.1.31'
  sha256 '778bc18879f6616c3a515374687be712bac1c816cb201116cd14ac3129f358fe'

  url 'https://upthere.com/apps/mac/UpthereHome.zip'
  appcast 'https://upthere.com/apps/mac/UpthereHome-appcast.xml'
  name 'Upthere Home'
  homepage 'https://upthere.com/'

  app 'Upthere Home.app'

  zap trash: [
               '~/Library/Application Support/Upthere',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.upthere.home.osx.sfl*',
               '~/Library/Caches/com.crashlytics.data/com.upthere.home.osx',
               '~/Library/Caches/com.upthere.home.osx',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.upthere.home.osx',
               '~/Library/Preferences/com.upthere.home.osx.UPUserDefaults.plist',
               '~/Library/Preferences/com.upthere.home.osx.plist',
               '~/Library/Preferences/com.upthere.home.osx.features.plist',
             ],
      rmdir: [
               '~/Library/Caches/com.crashlytics.data',
               '~/Library/Caches/io.fabric.sdk.mac.data',
             ]
end
