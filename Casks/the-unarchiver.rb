cask 'the-unarchiver' do
  version '3.11.1'
  sha256 '12d1af6475149647f996f1b0510e067f057444852f1aa08a8dad75d6debe6ddf'

  url 'https://theunarchiver.com/downloads/TheUnarchiver.zip'
  appcast 'https://theunarchiver.com/updates.rss',
          checkpoint: 'ccc12c475bce837e293f6ac608eb6f5a8a3ff07728410899a39d9b3c48457aa3'
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
