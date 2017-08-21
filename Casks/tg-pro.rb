cask 'tg-pro' do
  version '2.25'
  sha256 'ff4ee152575211be085c79b407ed05e8a1aa5cfa84274045cf2caff82a6ad6c9'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '3bad8d81b1e08fd1d79ef1abb49df711e25f512b79974477584959f1b67ecf05'
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
