cask 'wwdc' do
  version '5.0.4'
  sha256 '7d724e63fdc84c7eed67ea618ee1cf513aa0154581672353012457fc34c4d50d'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '10ae8c5b6bc7fc1bd09cac9ddc70528fad3fac49cc24288a96c6952d3733ddc8'
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
