cask 'wwdc' do
  version '6.1.2'
  sha256 'ed6e653493ffba3fb05488f0123e7f6f66f823b6401ff34ee8e420e8c0cdcf1a'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
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
