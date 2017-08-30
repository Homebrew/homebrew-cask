cask 'the-unarchiver' do
  version '3.11.2'
  sha256 '12d1af6475149647f996f1b0510e067f057444852f1aa08a8dad75d6debe6ddf'

  url 'https://theunarchiver.com/downloads/TheUnarchiver.zip'
  appcast 'https://theunarchiver.com/updates.rss',
          checkpoint: '96b0d76d58d91ed48f16edd2567ca314b2e833d7f1baa23a9f5e076201cb3bf6'
  name 'The Unarchiver'
  homepage 'https://theunarchiver.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'The Unarchiver.app'

  zap delete: [
                '~/Library/Caches/cx.c3.theunarchiver',
                '~/Library/Cookies/cx.c3.theunarchiver.binarycookies',
              ],
      trash:  '~/Library/Preferences/cx.c3.theunarchiver.plist'
end
