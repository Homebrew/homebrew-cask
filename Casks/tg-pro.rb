cask 'tg-pro' do
  version '2.21'
  sha256 '8a270b27d043d217793822eb7795caee707c4556cd1d9942e7b9b971140a8082'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '73407322535a05d4cda9d4c79344303b1debfb3f14918d277a3fd4a78be2f6ef'
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
