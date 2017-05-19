cask 'tg-pro' do
  version '2.20'
  sha256 'c3717b50786c1cf2f12e903cfce3b3b4733f735dcb010c1272e3b82e1302d188'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '9408248bf5b6df77c918f5f41ab143fc67a6f3d3e6b3d4b61cf830ed1d95a823'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'

  app 'TG Pro.app'

  zap delete: [
                '/Library/LaunchDaemons/com.tunabellysoftware.TGFanHelper.plist',
                '/Library/PrivilegedHelperTools/com.tunabellysoftware.TGFanHelper',
                '~/Library/Application Support/TG Pro',
                '~/Library/Caches/com.tunabellysoftware.tgpro',
                '~/Library/Cookies/com.tunabellysoftware.tgpro.binarycookies',
                '~/Library/Preferences/com.tunabellysoftware.tgpro.plist',
              ]
end
