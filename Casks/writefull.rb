cask 'writefull' do
  version '3.0.0-beta19'
  sha256 '0b424a82bbf184661ca7f0dd6459a8248ccb643cf07855fadab1481e10445c8d'

  # d3aw1w08kaciwn.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3aw1w08kaciwn.cloudfront.net/#{version}/Writefull.dmg"
  appcast 'https://writefullapp.com/js/download-urls.js',
          checkpoint: '76d2df0a07491e39623b71e3183612afc49f36e49e4eef2caf0187c549ed935c'
  name 'Writefull'
  homepage 'https://writefullapp.com/'

  app 'Writefull.app'

  zap delete: [
                '~/Library/Application Support/Writefull_3beta',
                '~/Library/Application Support/com.paraphrase.Writefull.ShipIt',
                '~/Library/Caches/Writefull_3beta',
                '~/Library/Caches/com.paraphrase.Writefull',
                '~/Library/Preferences/com.paraphrase.Writefull.plist',
                '~/Library/Saved Application State/com.paraphrase.Writefull.savedState',
              ]
end
