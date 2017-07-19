cask 'imazingmini' do
  version '2.3.1'
  sha256 '65820880df939380db9730117669a5f2c4c4a334660762900aeda9e54539a25e'

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.DigiDNA.iMazing2Mac.Mini/iMazingMini2forMac.dmg'
  name 'iMazing Mini'
  homepage 'https://imazing.com/mini'

  depends_on macos: '>= 10.8'

  app 'iMazing Mini.app'

  zap delete: [
                '~/Library/Application Support/iMazing Mini',
                '~/Library/Caches/com.DigiDNA.iMazing2Mac.Mini',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazing2Mac.Mini',
                '~/Library/Preferences/com.DigiDNA.iMazing2Mac.Mini.plist',
              ]
end
