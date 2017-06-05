cask 'wwdc' do
  version '5.0.6'
  sha256 '95608d1f741974776387455635f6a865fc1bfa74fc1f1827b364ac766d7e4c8c'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'be5c51d8164edfb8b9e0ddf3ce86f110eecb1b436d8f4f5dd42116873bb7b638'
  name 'WWDC'
  homepage 'https://wwdc.io/'

  auto_updates true

  app 'WWDC.app'

  zap delete: [
                '~/Library/Application Support/br.com.guilhermerambo.WWDC',
                '~/Library/Caches/br.com.guilhermerambo.WWDC',
                '~/Library/Preferences/br.com.guilhermerambo.WWDC.plist',
              ]
end
