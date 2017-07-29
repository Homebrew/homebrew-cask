cask 'the-unarchiver' do
  version :latest
  sha256 :no_check

  url 'https://theunarchiver.com/downloads/TheUnarchiver.zip'
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
