cask 'wwdc' do
  version '6.0.2'
  sha256 '2d5552fe3c4812d12314a1f98e4588fb9a1543c9adc886eb6e2df0c7e540c0ff'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'e5abe7ec64a955665d4d26f615c1ee299427d8bb852f0d1ee5fe60800aa52f61'
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
