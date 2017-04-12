cask 'writefull' do
  version '3.0.0-beta14'
  sha256 '3e73acde34d9100d823c16ae3c2c1224715d05210368505835fb8e790fbcbbb8'

  # d3aw1w08kaciwn.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3aw1w08kaciwn.cloudfront.net/#{version}-gem2/Writefull.dmg"
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
