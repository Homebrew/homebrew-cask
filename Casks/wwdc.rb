cask 'wwdc' do
  version '5.1.2'
  sha256 '796fc622ac6d72e817103b1abd42df341f52fcaf638c34135cc4d779232a32b3'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'cedf7cb732b62cc55b6213b334e7bb7824ff685d95be6bf9221e517fac79d81d'
  name 'WWDC'
  homepage 'https://wwdc.io/'

  auto_updates true

  app 'WWDC.app'

  zap delete: [
                '~/Library/Application Support/io.wwdc.app',
                '~/Library/Application Support/io.wwdc.app.TranscriptIndexingService',
                '~/Library/Application Support/WWDC',
                '~/Library/Preferences/io.wwdc.app.plist',
              ]
end
