cask 'tunnelbear' do
  version '3.0.16'
  sha256 '7ae86056d7ddc991f537be9b029f471eb446366adc3c4b0e0d4b9b45c24e07be'

  # tunnelbear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          checkpoint: '1b082eeb2a5a69687fcb0bb269a28ffdee80044baba181261d708b38a9a6b6c2'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'

  app 'TunnelBear.app'

  uninstall quit:      'com.tunnelbear.mac.TunnelBear',
            launchctl: 'com.tunnelbear.mac.tbeard'

  zap delete: [
                '~/Library/Preferences/com.tunnelbear.mac.TunnelBear.plist',
                '~/Library/Caches/com.tunnelbear.mac.TunnelBear',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tunnelbear.mac.tunnelbear.sfl',
                '~/Library/Application Support/com.tunnelbear.mac.TunnelBear',
                '~/Library/Application Support/TunnelBear',
                '~/Library/Caches/com.crashlytics.data/com.tunnelbear.mac.TunnelBear',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.tunnelbear.mac.TunnelBear',
                '~/Library/Caches/io.fabric.sdk.mac.data/com.tunnelbear.mac.TunnelBear',
                '~/Library/Cookies/com.tunnelbear.mac.TunnelBear.binarycookies',
                '~/Library/LaunchAgents/com.tunnelbear.mac.tbeara.plist',
                '~/Library/Logs/TunnelBear',
              ]
end
