cask 'wwdc' do
  version '5.1.3'
  sha256 '66533b2e04680dc6997b9a8ec698f045a0c9ac7938a4a9488ebd9c58d18307da'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'bd786b13bde733b4b0e1965caa0b8327bb20ee41f45791a353b63ba5412e8373'
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
