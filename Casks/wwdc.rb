cask 'wwdc' do
  version '6.2'
  sha256 '9477a50f1ec984bb1474fc72246d9e095241360cc66d43bbd737fff6a7761a6b'

  # github.com/insidegui/WWDC/ was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom'
  name 'WWDC'
  homepage 'https://wwdc.io/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'WWDC.app'

  zap trash: [
               '~/Library/Application Support/io.wwdc.app',
               '~/Library/Application Support/io.wwdc.app.TranscriptIndexingService',
               '~/Library/Application Support/WWDC',
               '~/Library/Preferences/io.wwdc.app.plist',
             ]
end
