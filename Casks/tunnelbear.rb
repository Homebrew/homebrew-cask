cask 'tunnelbear' do
  version '3.0.12'
  sha256 'da491e766e1dcf2fe1d36a09b9f4a32700be72810b9bb886483c40d37d547922'

  # tunnelbear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          checkpoint: '490edd55a26cb4f900f09a280cba8953228a0925c9018a2dcf7da8fe05c6497d'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'

  app 'TunnelBear.app'

  postflight do
    suppress_move_to_applications
  end

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
