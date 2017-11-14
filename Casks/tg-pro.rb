cask 'tg-pro' do
  version '2.27'
  sha256 '9ce022d2f9679e0176c53697e5cb195c38e0ee67a64eb7916d452698bc7d15ef'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '0f94a0e15bbe6a0ee7e782486113123b307902847c1b6b2ce9f66607cb984b3b'
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
