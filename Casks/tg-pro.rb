cask 'tg-pro' do
  version '2.18'
  sha256 '6d41d38cdaa479eeb1958f1e9cca762a66fa3b3c127c772d746855721a2116a9'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '0699744b368b56e0c0dbe43f5fa68a228418b4b7c752f4e52c41008ba7eb91ae'
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
