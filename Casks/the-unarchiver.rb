cask 'the-unarchiver' do
  version '3.11.4,116:1520347991'
  sha256 '0b65ed1af57766c9ce4db9207390f31ffc3a2c1c274616ac20749739661e4929'

  # devmate.com/cx.c3.theunarchiver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/cx.c3.theunarchiver/#{version.after_comma.before_colon}/#{version.after_colon}/TheUnarchiver-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/cx.c3.theunarchiver.xml',
          checkpoint: 'f0af10046b5de56a0de92d6be04aca3dea66afabab0b06dc58914d85828bc326'
  name 'The Unarchiver'
  homepage 'https://theunarchiver.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'The Unarchiver.app'

  zap trash: [
               '~/Library/Caches/cx.c3.theunarchiver',
               '~/Library/Cookies/cx.c3.theunarchiver.binarycookies',
               '~/Library/Preferences/cx.c3.theunarchiver.plist',
               '~/Library/Saved Application State/cx.c3.theunarchiver.savedState',
             ]
end
