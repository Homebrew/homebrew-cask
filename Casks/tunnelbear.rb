cask 'tunnelbear' do
  version '3.0.16'
  sha256 '3e2616ae98df5951f0effc0af3413ca97aa247ff7518a0184cfe0200f331a5ac'

  # tunnelbear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          checkpoint: '7eedcc1ccaf4f7d78bf42938714f21e1ee518395fb0c16f58f36c22721f76e9d'
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
