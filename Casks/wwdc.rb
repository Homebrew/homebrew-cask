cask 'wwdc' do
  version '5.2'
  sha256 'e116fdb9e3eff7054087253a7dd99517733f5a91b99aa2aedda9ec1c5871196a'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '18b15ac1ec7b25af0f117be888d1f1ac350ec789157d5098bf96407f954bac1b'
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
