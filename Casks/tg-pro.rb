cask 'tg-pro' do
  version '2.47'
  sha256 '6aea82695e5238220b080ee14e28fb2edd00e87f691f05d8942a7ac30b10617c'

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
