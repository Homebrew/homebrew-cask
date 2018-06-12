cask 'wwdc' do
  version '6.0.3'
  sha256 'b2615bba5d64a6c556973e73d7994ed11cb9f5f873848f10aca9d5fe21bed04c'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '97444f7edaedbe67c6877d27ecef552fd378cee29c3b47ffc8af1f37f22048c7'
  name 'WWDC'
  homepage 'https://wwdc.io/'

  auto_updates true

  app 'WWDC.app'

  zap trash: [
               '~/Library/Application Support/io.wwdc.app',
               '~/Library/Application Support/io.wwdc.app.TranscriptIndexingService',
               '~/Library/Application Support/WWDC',
               '~/Library/Preferences/io.wwdc.app.plist',
             ]
end
