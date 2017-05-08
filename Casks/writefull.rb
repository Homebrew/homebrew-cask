cask 'writefull' do
  version '3.0.0-beta17'
  sha256 'da1a9e1d39512c275d57de7de1f01b08ff9132258b02e514d1bd86c388a0fd8c'

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
