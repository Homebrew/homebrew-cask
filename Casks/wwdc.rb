cask 'wwdc' do
  version '5.1.1'
  sha256 '17ed2d3e999f57da406bf187556b72a9dafbcce3464c47cb40449b488424a85d'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: '5035ca23692bc669f10059607696444411bc6ce7223b189356b4f5f6a3bcda3a'
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
