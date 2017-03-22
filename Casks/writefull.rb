cask 'writefull' do
  version :latest
  sha256 :no_check

  # d3aw1w08kaciwn.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d3aw1w08kaciwn.cloudfront.net/Writefull.dmg'
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
