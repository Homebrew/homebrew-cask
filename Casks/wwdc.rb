cask 'wwdc' do
  version '5.1'
  sha256 'b0d0bbf721397e3a0d257613f60a7df4d7a292feeda38aabac6a51393eb95583'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'a5615f272857f5efb147a837a5f5e2ef4b82b29625829f2488a2f45bce14acf9'
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
