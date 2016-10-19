cask 'tunnelbear' do
  version '3.0.3'
  sha256 'ad44e0d381d8af47717acfb1f8bcf056a42adfb8afcf169c091e55ffc5d13852'

  # tunnelbear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          checkpoint: '7dccca17d466d05cfc753fdd08e1e119964c61c7a1dfcb4b36e829849935c03b'
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
