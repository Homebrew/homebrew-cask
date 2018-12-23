cask 'tg-pro' do
  version '2.33'
  sha256 '21739de4670a67c03e80735387a10b6f2fc1b8e9f93273417e406094bd3814c8'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro.xml'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'

  app 'TG Pro.app'

  zap trash: [
               '/Library/LaunchDaemons/com.tunabellysoftware.TGFanHelper.plist',
               '/Library/PrivilegedHelperTools/com.tunabellysoftware.TGFanHelper',
               '~/Library/Application Support/TG Pro',
               '~/Library/Caches/com.tunabellysoftware.tgpro',
               '~/Library/Cookies/com.tunabellysoftware.tgpro.binarycookies',
               '~/Library/Preferences/com.tunabellysoftware.tgpro.plist',
             ]
end
