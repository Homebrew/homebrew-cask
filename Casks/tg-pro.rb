cask 'tg-pro' do
  version '2.45'
  sha256 '0d7408f07fa7f9f9d0727239aaacbf42b0928ff75c68177848c380be1fcc580c'

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
