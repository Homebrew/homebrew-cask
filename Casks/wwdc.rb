cask 'wwdc' do
  version '7.0'
  sha256 '2c04ad6bc542ae6e46dc677434824541a379e681eeb2f0454558878d5ec3abff'

  # github.com/insidegui/WWDC/ was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version.major}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom'
  name 'WWDC'
  homepage 'https://wwdc.io/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'WWDC.app'

  zap trash: [
               '~/Library/Application Support/io.wwdc.app',
               '~/Library/Application Support/io.wwdc.app.TranscriptIndexingService',
               '~/Library/Application Support/WWDC',
               '~/Library/Preferences/io.wwdc.app.plist',
             ]
end
