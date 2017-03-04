cask 'tunnelbear' do
  version '3.0.10'
  sha256 'd738652edf99b45c1ae6bd16f0b919f0dc86660a6d41bc59c4abc868dc085b45'

  # tunnelbear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tunnelbear.s3.amazonaws.com/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml',
          checkpoint: '6f0f137c08a7504fd170ba0f37301eac679af9bc02829e70dd54f01c354aee80'
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
