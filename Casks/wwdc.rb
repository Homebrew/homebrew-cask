cask 'wwdc' do
  version '7.0.2'
  sha256 '0bbc4c9734e83cf292837dcab9a19c69f2e61e5db909d96088f416920f8f0ecd'

  # github.com/insidegui/WWDC/ was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom'
  name 'WWDC'
  homepage 'https://wwdc.io/'

  auto_updates true
  depends_on macos: '>= :catalina'

  app 'WWDC.app'

  zap trash: [
               '~/Library/Application Support/io.wwdc.app',
               '~/Library/Application Support/io.wwdc.app.TranscriptIndexingService',
               '~/Library/Application Support/WWDC',
               '~/Library/Preferences/io.wwdc.app.plist',
             ]
end
