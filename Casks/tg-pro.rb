cask 'tg-pro' do
  version '2.44'
  sha256 '6817830142377c30d97a8f6fdbbf8bd5f783abd10a70b2468a602446d71949f4'

  url "https://www.tunabellysoftware.com/resources/TG%20Pro%20#{version}.dmg"
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
