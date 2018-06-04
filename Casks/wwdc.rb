cask 'wwdc' do
  version '6.0.1'
  sha256 '72fe8e3cc8b7d06d0688c347e6a3405e648c132dcf12c3481557d9c3e8351368'

  # github.com/insidegui/WWDC was verified as official when first introduced to the cask
  url "https://github.com/insidegui/WWDC/releases/download/#{version}/WWDC_v#{version}.zip"
  appcast 'https://github.com/insidegui/WWDC/releases.atom',
          checkpoint: 'bb15dcaa4af98d85172a2c5c3aa5ca118ce160c07129e3e850a1c944db2071b1'
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
