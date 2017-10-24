cask 'the-unarchiver' do
  version '3.11.3,115:1507740941'
  sha256 '04dc20b845171e25c7137e504cd5a5387a81bdfdc51d2ad810d5fdcf84cff8c6'

  # devmate.com/cx.c3.theunarchiver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/cx.c3.theunarchiver/#{version.after_comma.before_colon}/#{version.after_colon}/TheUnarchiver-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/cx.c3.theunarchiver.xml',
          checkpoint: '1c96c54e3a66a32152a075585833353b2a7973e4f3460c49f597dff60626f5cd'
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
