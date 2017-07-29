cask 'the-unarchiver' do
  version '3.11.1'
  sha256 '12d1af6475149647f996f1b0510e067f057444852f1aa08a8dad75d6debe6ddf'

  url 'https://theunarchiver.com/downloads/TheUnarchiver.zip'
  appcast 'http://blog.macpaw.com/rss',
          checkpoint: 'cd9dbb45bb6fd7c13de7493a2e9549221c5751a2ecb7f2e248bf69bf1faa5b7d'
  name 'The Unarchiver'
  homepage 'https://theunarchiver.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'The Unarchiver.app'

  zap delete: [
                '~/Library/Caches/cx.c3.theunarchiver',
                '~/Library/Cookies/cx.c3.theunarchiver.binarycookies',
                '~/Library/Preferences/cx.c3.theunarchiver.plist',
              ]
end
