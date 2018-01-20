cask 'tunnelbear' do
  version '3.5.0'
  sha256 '95eddbd5da1c894d93f6700cdf9f6a48ccaa9bec06daea88bfaef6d9bff8fb36'

  # s3.amazonaws.com/tunnelbear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tunnelbear/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          checkpoint: 'd3858b49220a01bb25d69c6e7357d572901ed1a53798c9d07f6a5f2ce604a99c'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'

  app 'TunnelBear.app'

  uninstall quit:      'com.tunnelbear.mac.TunnelBear',
            launchctl: 'com.tunnelbear.mac.tbeard'

  zap trash: [
               '~/Library/Preferences/com.tunnelbear.mac.TunnelBear.plist',
               '~/Library/Caches/com.tunnelbear.mac.TunnelBear',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tunnelbear.mac.tunnelbear.sfl*',
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
