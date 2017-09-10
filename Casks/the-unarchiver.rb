cask 'the-unarchiver' do
  version '3.11.2,113:1504002485'
  sha256 'fd7c412af8da923429878d33343b05c9fe8dd8906488875050212f4424a048aa'

  # devmate.com/cx.c3.theunarchiver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/cx.c3.theunarchiver/#{version.after_comma.before_colon}/#{version.after_colon}/TheUnarchiver-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/cx.c3.theunarchiver.xml',
          checkpoint: 'b76f0a4ff7cc381181e7c46d5fea6d0b62dc07d10aa1751b882a0b6674fa82aa'
  name 'The Unarchiver'
  homepage 'https://theunarchiver.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'The Unarchiver.app'

  zap delete: [
                '~/Library/Caches/cx.c3.theunarchiver',
                '~/Library/Cookies/cx.c3.theunarchiver.binarycookies',
                '~/Library/Saved Application State/cx.c3.theunarchiver.savedState',
              ],
      trash:  '~/Library/Preferences/cx.c3.theunarchiver.plist'
end
